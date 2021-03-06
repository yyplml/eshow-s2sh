package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.BlogCommentQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.BlogComment;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface BlogCommentManager extends GenericManager<BlogComment, Integer> {

	List<BlogComment> list(BlogCommentQuery query);

	Page<BlogComment> search(BlogCommentQuery query);
}