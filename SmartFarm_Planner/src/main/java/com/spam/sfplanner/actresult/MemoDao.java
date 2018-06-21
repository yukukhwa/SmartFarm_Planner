/*나성수*/
package com.spam.sfplanner.actresult;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemoDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NAMESPACE = "com.spam.sfplanner.actresult.MemoMapper.";
	
	public void insertMemo(Memo memo) {
		sqlSessionTemplate.insert(NAMESPACE+"insertMemo", memo);
	}
	
	public List<Memo> listSelectMemo(Map<String,Object> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectMemo", map);
	}
}
