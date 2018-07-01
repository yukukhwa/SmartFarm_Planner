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
	
	/**
	 * 계획서 수정 처리 Dao
	 * @param productionPlan
	 */
	public void updateProductionPlan(ProductionPlan productionPlan) {
		sqlSessionTemplate.update(NAMESPACE+"updateProductionPlan", productionPlan);
	}
	
	/**
	 * 계획서 삭제 처리 Dao
	 * @param ppNumber
	 */
	public void deleteProductionPlan(int ppNumber) {
		sqlSessionTemplate.delete(NAMESPACE+"deleteProductionPlan", ppNumber);
	}
	
	/**
	 * 계획서 등록 처리 Dao
	 * @param productionPlan
	 */
	public void insertProductionPlan(ProductionPlan productionPlan) {
		sqlSessionTemplate.insert(NAMESPACE+"insertProductionPlan", productionPlan);
	}
	
	/**
	 * 계획서 상세 내용 출력 Dao
	 * @param ppNumber
	 * @return 계획서 상세 내용
	 */
	public ProductionPlan oneSelectProductionPlan(int ppNumber) {
		return sqlSessionTemplate.selectOne(NAMESPACE+"oneSelectProductionPlan", ppNumber);
	}
	
	/**
	 * 계획서 리스트 출력 Dao
	 * @param map
	 * @return 계획서 리스트
	 */
	public List<ProductionPlan> listSelectProductionPlan(Map<String,Object> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"listSelectProductionPlan",map);
	}
}
