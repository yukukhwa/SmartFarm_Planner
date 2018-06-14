/*[김재희]*/
package com.spam.sfplanner.plan;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class PpWorkService {
	@Autowired PpWorkDao ppWorkDao;
	private final static Logger LOGGER = LoggerFactory.getLogger(PpWorkService.class);
}
