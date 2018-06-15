/*나성수*/
package com.spam.sfplanner.actresult;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class MemoService {

	@Autowired
	private MemoDao memoDao;
	
	public List<Memo> listSelectMemo(int wrNumber) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("search", "yes");
		map.put("column", "실행결과작업단계넘버");
		map.put("property", wrNumber);
		return memoDao.listSelectMemo(map);
	}
}
