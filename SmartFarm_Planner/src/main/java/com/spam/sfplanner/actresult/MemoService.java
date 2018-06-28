/*나성수*/
package com.spam.sfplanner.actresult;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.category.CategoryTheme;
import com.spam.sfplanner.category.CategoryThemeDao;

@Transactional
@Service
public class MemoService {

	@Autowired
	private MemoDao memoDao;
	
	@Autowired
	private PpWoResultDao ppWoResultDao;
	
	@Autowired
	private CategoryThemeDao categoryThemeDao;
	
	public void updateMemo(Memo memo) {
		memoDao.updateMemo(memo);
	}
	
	public void deleteMemo(int wrNumber) {
		memoDao.deleteMemo(wrNumber);
	}
	
	public void insertMemo(Memo memo) {
		memoDao.insertMemo(memo);
	}
	
	public Map<String,Object> insertMemo(int ppResultlistNumber){
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("ppResultlistNumber", ppResultlistNumber);
		List<CategoryTheme> categoryThemeList = categoryThemeDao.listSelectCategoryTheme();
		List<PpWoResult> ppWoResultList = ppWoResultDao.listSelectWorkResult(map);
		map.clear();
		map.put("categoryThemeList", categoryThemeList);
		map.put("ppWoResultList", ppWoResultList);
		return map;
	}
	
	public List<Memo> listSelectMemo(int wrNumber) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("wrNumber", wrNumber);
		return memoDao.listSelectMemo(map);
	}
}
