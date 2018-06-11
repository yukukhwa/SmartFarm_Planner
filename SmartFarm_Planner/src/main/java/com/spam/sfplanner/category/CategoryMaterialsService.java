package com.spam.sfplanner.category;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryMaterialsService {
	@Autowired CategoryMaterialsDao categoryMaterialsDao;
	private static final Logger LOGGER = LoggerFactory.getLogger(CategoryMaterialsService.class);
	
	public void insertCategoryMaterials(CategoryMaterialsDb categoryMaterialsDb) {
		categoryMaterialsDao.insertCategoryMaterials(categoryMaterialsDb);
	}
}
