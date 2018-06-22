/*배건혜*/
package com.spam.sfplanner.plan;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyRentEquipDao {
	@Autowired
	private SqlSessionTemplate sqlsession;
	private static final String NAMESPACE = "com.spam.sfplanner.plan.CompanyRentEquipMapper.";
	/**
	 * 대여가능장비 수정처리 Dao
	 * @param companyRentEquip
	 */
	public void updateCompanyRentEquip(CompanyRentEquip companyRentEquip) {
		sqlsession.update(NAMESPACE+"updateCompanyRentEquip", companyRentEquip);
	}
	/**
	 * 대여가능장비 하나의 리스트 수정화면 출력 Dao
	 * @param 대여가능장비넘버
	 * @return 대여가능장비수정화면
	 */
	public CompanyRentEquip oneSelectCompanyRentEquip(int cRentNumber) {
		return sqlsession.selectOne(NAMESPACE+"oneSelectCompanyRentEquip", cRentNumber);
	}
	
	/**
	 * 대여가능장비 삭제 Dao
	 * @param 대여가능장비넘버
	 */
	public void deleteCompanyRentEquip(int cRentNumber) {
		sqlsession.delete(NAMESPACE+"deleteCompanyRentEquip", cRentNumber);
	}
	
	/**
	 * 대여가능장비 리스트 출력 Dao
	 * @param map
	 * @return
	 */
	public List<CompanyRentEquip> listSelectCompanyRentEquip(Map<String,Object> map){
		return sqlsession.selectList(NAMESPACE+"listSelectCompanyRentEquip", map);
	}
	
	/**
	 * 대여가능장비 등록처리 Dao
	 * @param companyRentEquip
	 */
	public void insertCompanyRentEquip(CompanyRentEquip companyRentEquip) {
		sqlsession.insert(NAMESPACE+"insertCompanyRentEquip", companyRentEquip);
	}
}
