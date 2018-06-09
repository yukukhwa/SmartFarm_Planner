/*나성수*/
package com.spam.sfplanner.category;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spam.sfplanner.login.LoginDb;

/*
 * 산업분류카테고리 관련 서비스
 */
@Service
public class CategoryIndustryService {
	
	@Autowired
	private CategoryIndustryDao categoryIndustryDao;
	
	public void insertCategoryIndustry(CategoryIndustryDb categoryIndustryDb,HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aNumber", ((LoginDb)session.getAttribute("loginMember")).getCorpNumber());
		map.put("industryName", categoryIndustryDb.getIndustryName());
		categoryIndustryDao.insertCategoryIndustry(map);
	}
}
