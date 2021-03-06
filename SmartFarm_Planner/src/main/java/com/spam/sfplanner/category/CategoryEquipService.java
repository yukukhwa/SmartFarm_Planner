/*배건혜*/
package com.spam.sfplanner.category;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spam.sfplanner.login.Login;
@Transactional
@Service
public class CategoryEquipService {
	@Autowired
	private CategoryEquipDao categoryEquipDao;
	private static final Logger logger = LoggerFactory.getLogger(CategoryEquipService.class);
	
	/*장비종류카테고리삭제 Service*/
	public void deleteCategoryEquip(int equipNumber) {
		categoryEquipDao.deleteCategoryEquip(equipNumber);
	}
	/*장비종류카테고리 수정처리 Service*/
	public void updateCategoryEquip(CategoryEquip categoryEquip) {
		categoryEquipDao.updateCategoryEquip(categoryEquip);
	}
	/*하나의 장비종류카테고리 호출 Service*/
	public CategoryEquip oneSelectCategoryEquip(int equipNumber) {
		return categoryEquipDao.oneSelectCategoryEquip(equipNumber);
	}
	/*장비종류카테고리 리스트 출력 Service*/
	public List<CategoryEquip> listSelectCategoryEquip(){
		return categoryEquipDao.listSelectCategoryEquip();
	}
	/*장비종류카테고리 등록 Service*/
	public void insertCategoryEquip(CategoryEquip categoryEquip, HttpSession session) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("aNumber", ((Login)session.getAttribute("loginMember")).getCorpNumber());
			map.put("equipName", categoryEquip.getEquipName());
			categoryEquipDao.insertCategoryEquip(map);
		}
	}
