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
	
	/**
	 * 메모 수정 처리 Dao
	 * @param memo
	 */
	public void updateMemo(Memo memo) {
		sqlSessionTemplate.update(NAMESPACE+"updateMemo", memo);
	}
	
	/**
	 * 메모 삭제 처리 Dao
	 * @param wrNumber
	 */
	public void deleteMemo(int wrNumber) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteMemo", wrNumber);
	}
	
	/**
	 * 메모 등록 처리 Dao
	 * @param memo
	 */
	public void insertMemo(Memo memo) {
		sqlSessionTemplate.insert(NAMESPACE+"insertMemo", memo);
	}
	
	/**
	 * 메모 리스트 출력 처리 Dao
	 * @param map
	 * @return 메모 리스트
	 */
	public List<Memo> listSelectMemo(Map<String,Object> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectMemo", map);
	}
}
