package com.last.common.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.last.common.vo.MongoVO;

@Controller
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	public void setMongoTemplate(MongoTemplate mongoTemplate) {
		this.mongoTemplate = mongoTemplate;
	}

	private static String COLLECTION_NAME = "alphaMember";
	
	@RequestMapping("/insert")
	public String insert() {
		MongoVO mvo = new MongoVO();
		mvo.setId(20170709);
		mvo.setUser("김재현");
		mvo.setPassword("alpha");
		mvo.setEmail("ckddus61@naver.com");
		this.insert(mvo);
		return "mongo";
		
	}
	
	@RequestMapping("/getUser")
	public String mongoTest2(Model model){
		MongoVO mvo = new MongoVO();
		mvo.setId(20170709);
		MongoVO mvo2 = this.getMongoVO(mvo);
		model.addAttribute("mvo", mvo2);
		return "mongo";
	}


	@Override
	public MongoVO getMongoVO(MongoVO mvo) {
		return mongoTemplate.findById(mvo.getId(), MongoVO.class, COLLECTION_NAME);
	}

	@Override
	public void insert(MongoVO mongo) {
		mongoTemplate.insert(mongo,COLLECTION_NAME);
	}

}
