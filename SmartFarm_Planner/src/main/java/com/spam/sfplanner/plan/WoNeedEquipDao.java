/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WoNeedEquipDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final static String NAMESPACE = "com.spam.sfplanner.plan.WoNeedEquipMapper.";
	
	public List<WoNeedEquip> listSelectWoNeedEquip(Map<String, Object> map){
		return sqlSession.selectList(NAMESPACE+"listSelectWoNeedEquip", map);
	}
	
	public void insertWoNeedEquip(WoNeedEquip woNeedEquip) {
		sqlSession.insert(NAMESPACE+"insertWoNeedEquip", woNeedEquip);
	}
}
