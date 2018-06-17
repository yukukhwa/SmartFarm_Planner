/*나성수*/
package com.spam.sfplanner.plan;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductionPlanDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final String NAMESPACE = "com.spam.sfplanner.plan.ProductionPlanMapper.";
	
	public void updateProductionPlan(ProductionPlan productionPlan) {
		sqlSessionTemplate.update(NAMESPACE+"updateProductionPlan", productionPlan);
	}
	
	public void deleteProductionPlan(int ppNumber) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteProductionPlan", ppNumber);
	}
	
	public void insertProductionPlan(ProductionPlan productionPlan) {
		sqlSessionTemplate.insert(NAMESPACE+"insertProductionPlan", productionPlan);
	}
	
	public ProductionPlan oneSelectProductionPlan(int ppNumber) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"oneSelectProductionPlan", ppNumber);
	}
	
	public List<ProductionPlan> listSelectProductionPlan(Map<String,Object> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectProductionPlan",map);
	}
}
