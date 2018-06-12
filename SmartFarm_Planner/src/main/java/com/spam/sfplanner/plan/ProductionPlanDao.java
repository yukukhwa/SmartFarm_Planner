/*나성수*/
package com.spam.sfplanner.plan;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductionPlanDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
}
