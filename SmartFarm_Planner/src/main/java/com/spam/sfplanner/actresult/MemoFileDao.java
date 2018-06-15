/*나성수*/
package com.spam.sfplanner.actresult;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemoFileDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NAMESPACE = "com.spam.sfplanner.actresult.MemoFileMapper.";
}
