/*[김기성]*/
package com.spam.sfplanner.actresult;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.plan.ProductionPlanDao;
import com.spam.sfplanner.plan.WoEtcSpendPayDao;
import com.spam.sfplanner.Paging;
import com.spam.sfplanner.category.CategoryTheme;
import com.spam.sfplanner.category.CategoryThemeDao;
import com.spam.sfplanner.plan.PpWork;
import com.spam.sfplanner.plan.PpWorkDao;
import com.spam.sfplanner.plan.ProductionPlan;
import com.spam.sfplanner.plan.WoHumanPayDao;
import com.spam.sfplanner.plan.WoInsurancePayDao;
import com.spam.sfplanner.plan.WoMaterialsPayDao;
import com.spam.sfplanner.plan.WoNeRentPayDao;
import com.spam.sfplanner.plan.WoNeedEquip;
import com.spam.sfplanner.plan.WoNeedEquipDao;
import com.spam.sfplanner.plan.WoHumanPay;

@Service
@Transactional
public class ActResultService {
	
	@Autowired
	private ActResultDao actResultDao; // 실행결과 dao
	@Autowired
	private ProductionPlanDao productionPlanDao; // 계획서 dao
	@Autowired
	private PpWoResultDao ppWoResultDao; // 작업단계결과 dao
	@Autowired
	private PpWorkDao ppWorkDao; // (계획서) 작업단계 dao
	@Autowired
	private WrHumanPayDao wrHumanPayDao; // 인건비 결과 dao
	@Autowired
	private WoHumanPayDao woHumanPayDao; // (계획서) 인건비 dao
	@Autowired
	private WrMaterialsPayDao wrMaterialsPayDao; // 원자재비 결과 dao
	@Autowired
	private WoMaterialsPayDao woMaterialsPayDao; // (계획서) 원자재비 dao
	@Autowired
	private WrInsurancePayDao wrInsurancePayDao; // 보험비 결과 dao
	@Autowired
	private WoInsurancePayDao woInsurancePayDao; // (계획서) 보험비 dao
	@Autowired
	private WrEtcSpendPayDao wrEtcSpendPayDao; // 기타지출비 결과 dao
	@Autowired
	private WoEtcSpendPayDao woEtcSpendPayDao; // (계획서) 기타지출비 dao
	@Autowired
	private WrNeedEquipDao wrNeedEquipDao; // 필요장비 결과 dao
	@Autowired
	private WoNeedEquipDao woNeedEquipDao; // (계획서) 필요장비 dao
	@Autowired
	private WrNeRentPayDao wrNeRentPayDao; // 대여비 결과 dao
	@Autowired
	private WoNeRentPayDao woNeRentPayDao; // (계획서) 대여비 dao
	@Autowired
	private CategoryThemeDao categoryThemeDao; // 카테고리 테마 dao
	@Autowired
	private MemoDao memoDao; // 메모 dao
	
	private static final Logger logger = LoggerFactory.getLogger(ActResultService.class);
	/*
	 * 실행결과리스트넘버를 매개변수로 받아 해당하는 실행결과리스트 한개를 리턴하는 dao를 호출하여 actResult에 대입하고
	 * 해당하는 작업단계 리스트를 리턴하는 dao를 호출하여 list에 대입한다.
	 * 작업단계 넘버를 map에 셋팅하여 해당하는 인건비/원자재/기타지출비/인건비/필요장비/메모 리스트를 리턴하는 dao를 호출하여  ppWoResult에 셋팅하고
	 * 필요장비/메모 하위인 대여비/메모파일도 같은 방식으로 각각 세팅한 후
	 * actResult에 list를 셋팅하여 리턴한다.
	 */
	public ActResult oneSelectActResult(int ppResultlistNumber) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppResultlistNumber", ppResultlistNumber);
		ActResult actResult = actResultDao.oneSelectActResult(map);
		/*
		 * 작업단계리스트별로 하위항목들을 각각 세팅하는 반복문
		 */
		List<PpWoResult> PpWoResultList = ppWoResultDao.listSelectWorkResult(map);
		for(PpWoResult ppWoResult : PpWoResultList) {
			map.put("wrNumber", ppWoResult.getWrNumber());
			ppWoResult.setWrHumanPayList(wrHumanPayDao.listSelectWrHumanPay(map));
			ppWoResult.setWrMaterialsPayList(wrMaterialsPayDao.listSelectWrMaterialsPay(map));
			ppWoResult.setWrEtcSpendPayList(wrEtcSpendPayDao.listSelectWrEtcSpendPay(map));
			ppWoResult.setWrInsurancePayList(wrInsurancePayDao.listSelectWrInsurancePay(map));
			/*
			 * 필요장비별 대여비를 셋팅하는 반복문
			 */
			List<WrNeedEquip> WrNeedEquipList = wrNeedEquipDao.listSelectWrNeedEquip(map);
			for(WrNeedEquip wrNeedEquip : WrNeedEquipList) {
				map.put("wrNeedequipNumber", wrNeedEquip.getWrNeedequipNumber());
				wrNeedEquip.setWrNeRentPayList(wrNeRentPayDao.listselectWrNeRentPay(map));
			}
			ppWoResult.setWrNeedEquipList(WrNeedEquipList);
			
			List<Memo> memoList= memoDao.listSelectMemo(map);
			/*for(Memo memo : memoList) {
				map.put("wrMemoNumber", memo.getWrMemoNumber());
				memo.setMemoFile(memoFileDao.listselectMemoFile(map));
			}*/
			ppWoResult.setMemoList(memoList);
		}
		actResult.setPpWoResultList(PpWoResultList);
		return actResult;
	}
	/*
	 * actResult를 매개변수로 받아 actResultDao에 insertActResult를 호출하여 실행결과리스트를 db에 등록하고
	 * 1:N관계인 작업단계결과도 리턴받은 넘버를 셋팅한 후 dao를 호출하여 db에 입력한다.
	 * 작업단계의 하위 항목인 인건비, 원자재, 기타지출비, 보험비, 필요장비, 메모도 마찬가지로 입력한다.
	 * 그리고 필요장비의 하위항목인 대여비도 마찬가지로 입력한다.
	 */
	public void insertActResult(ActResult actResult) {
		actResultDao.insertActResult(actResult);
		List<PpWoResult> ppWoResultList = actResult.getPpWoResultList();
		if(ppWoResultList != null) {
			for(PpWoResult ppWoResult : ppWoResultList) {
				ppWoResult.getActResult().setPpResultlistNumber(actResult.getPpResultlistNumber());
				ppWoResultDao.insertWorkResult(ppWoResult);
				List<WrHumanPay> wrHumanPayList = ppWoResult.getWrHumanPayList();
				if(wrHumanPayList != null) {
					for(WrHumanPay wrHumanPay : wrHumanPayList) {
						wrHumanPay.getPpWoResult().setWrNumber(ppWoResult.getWrNumber());
						wrHumanPayDao.insertWrHumanPay(wrHumanPay);
					}
				}
				List<WrMaterialsPay> wrMaterialsPayList = ppWoResult.getWrMaterialsPayList();
				if(wrMaterialsPayList != null) {
					for(WrMaterialsPay wrMaterialsPay : wrMaterialsPayList) {
						wrMaterialsPay.getPpWoResult().setWrNumber(ppWoResult.getWrNumber());
						wrMaterialsPayDao.insertWrMaterialsPay(wrMaterialsPay);
					}
				}
				List<WrInsurancePay> wrInsurancePayList = ppWoResult.getWrInsurancePayList();
				if(wrInsurancePayList != null) {
					for(WrInsurancePay wrInsurancePay : wrInsurancePayList) {
						wrInsurancePay.getPpWoResult().setWrNumber(ppWoResult.getWrNumber());
						wrInsurancePayDao.insertWrInsurancePay(wrInsurancePay);
					}
				}
				List<Memo> memoList = ppWoResult.getMemoList();
				if(memoList != null) {
					for(Memo memo : memoList) {
						memo.getPpWoResult().setWrNumber(ppWoResult.getWrNumber());
						memoDao.insertMemo(memo);
					}
				}
			}
		}
	}
	
	public Map<String, Object> insertActResult(int ppNumber) {
		ProductionPlan productionPlan = productionPlanDao.oneSelectProductionPlan(ppNumber);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ppNumber", ppNumber);
		List<PpWork> ppWorkList = ppWorkDao.listSelectPpWork(map);
		for(PpWork ppWork : ppWorkList) {
			map.put("ppWorkNumber", ppWork.getPpWorkNumber());
			ppWork.setWoMaterialsPayList(woMaterialsPayDao.listSelectWoMaterialsPay(map));
			ppWork.setWoInsurancePayList(woInsurancePayDao.listSelectWoInsurancePay(map));
			ppWork.setWoHumanPayList(woHumanPayDao.listSelectWoHumanPay(map));
			ppWork.setWoEtcSpendPayList(woEtcSpendPayDao.listSelectWoEtcSpendPay(map));
			
			List<WoNeedEquip> WoNeedEquipList = woNeedEquipDao.listSelectWoNeedEquip(map);
			for(WoNeedEquip woNeedEquip : WoNeedEquipList) {
				map.put("eNeedequipNumber", woNeedEquip.geteNeedequipNumber());
				woNeedEquip.setWoNeRentPayList(woNeRentPayDao.listSelectWoNeRentPay(map));
			}
			ppWork.setWoNeedEquipList(WoNeedEquipList);
		}
		productionPlan.setPpWorkList(ppWorkList);
		map.put("productionPlan", productionPlan);
		List<CategoryTheme> categoryThemeList = categoryThemeDao.listSelectCategoryTheme();
		map.put("categoryThemeList", categoryThemeList);
		return map;
	}
	/*
	 * 농가넘버, 페이징변수, 검색변수를 매개변수로 받아 조건에 해당하는 리스트 갯수를 새는 dao를 호출하여 나온 결과로
	 * paging객체를 이용하여 페이징변수를 셋팅한다. 그 후 변수들을 map에 셋팅한후 해당하는 실행결과 리스트를 호출하는 dao를 호출하고
	 * 그 결과를 map에 셋팅하여 map을 리턴하는 매서드
	 */
	public Map<String, Object> listSelectActResult(int fNumber, int currentPage, int pagePerRow, String searchOption, String searchKeyword, String startDate, String endDate) {
		Map<String, Object> map = new HashMap<String, Object>();
		/*
		 * 전체리스트 : fNumber = 0
		 * 자신의 리스트 : fNumber = 자신의 농가넘버
		 */
		if(fNumber != 0) {
			map.put("fNumber", fNumber);
		}
		
		map.put("searchOption", searchOption);
		map.put("searchKeyword", searchKeyword);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		/*
		 * 조건에 맞는 리스트목록을 세는 매서드를 호출하여 그 결과를 totalRow에 대입한다.
		 */
		int totalRow = actResultDao.countActResult(map);
		logger.debug("totalRow : "+totalRow);
		/*
		 * 페이징을 편하게 하기 위해 paging 객체를 활용하여 변수들을 셋팅하였다.
		 */
		Paging paging = new Paging(totalRow, pagePerRow, currentPage);
		/*
		 * 시작페이지와 끝페이지를 확용하여 페이지 리스트를 만들었다.
		 */
		List<Integer> pageList = new ArrayList<Integer>();
		for(int i=paging.getStartPage(); i<=paging.getEndPage(); i++) {
			pageList.add(i);
		}
		map.put("beginRow", paging.getBeginRow());
		map.put("pagePerRow", pagePerRow);
		map.put("actResultList", actResultDao.listSelectActResult(map));
		map.put("currentPage", currentPage);
		map.put("totalPage", paging.getTotalPage());
		map.put("pageList", pageList);
		logger.debug("map : "+map);
		return map;
	}
	/*
	 * 농가넘버를 매개변수로 받아 map에 농가코드를 셋팅해준 후 생산계획 리스트를 출력하는 매서드를 호출하여
	 * 그 목록을 리턴한다.
	 */
	public List<ProductionPlan> listSelectProductionPlan(int corpNumber) {
		/*
		 * search에 yes를 넣으면 조건절이 붙고
		 * column에 농가넘버를 넣어 농가인지 조건을 붙고
		 * 해당하는 농가만 알기 위해 농가넘버를 붙여
		 * map에 셋팅한다.
		 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "농가넘버");
		map.put("fNumber", corpNumber);
		return productionPlanDao.listSelectProductionPlan(map);
	}

}
