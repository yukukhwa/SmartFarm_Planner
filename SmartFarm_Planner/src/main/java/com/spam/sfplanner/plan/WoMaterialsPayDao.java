/*[김재희]*/
package com.spam.sfplanner.plan;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WoMaterialsPayDao {
	@Autowired SqlSessionTemplate sqlSession;
	private final static Logger LOGGER = LoggerFactory.getLogger(WoMaterialsPayDao.class);
	private final static String NAMESPACE = "com.spam.sfplanner.plan.WoMaterialsPayMapper.";
	
	public List<WoMaterialsPay> listSelectWoMaterialsPay(int ppWorkNumber){
		return sqlSession.selectList(NAMESPACE+"listSelectWoMaterialsPay", ppWorkNumber);
	}
}
