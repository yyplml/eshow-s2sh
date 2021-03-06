package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.TopicQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Topic;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface TopicManager extends GenericManager<Topic, Integer> {
	
	List<Topic> list(TopicQuery query);
	
	Page<Topic> search(TopicQuery query);
}
