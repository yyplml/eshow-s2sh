package com.logo.eshow.service.impl;

import com.logo.eshow.bean.query.ProductCategoryQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ProductCategoryDao;
import com.logo.eshow.model.ProductCategory;
import com.logo.eshow.service.ProductCategoryManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import java.util.List;
import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "ProductCategoryService", endpointInterface = "com.logo.eshow.service.ProductCategoryManager")
@Service
public class ProductCategoryManagerImpl extends GenericManagerImpl<ProductCategory, Integer>
		implements ProductCategoryManager {
	@Autowired
	ProductCategoryDao productCategoryDao;

	@Autowired
	public ProductCategoryManagerImpl(ProductCategoryDao productCategoryDao) {
		super(productCategoryDao);
		this.productCategoryDao = productCategoryDao;
	}

	public List<ProductCategory> list(ProductCategoryQuery query) {
		return productCategoryDao.list(query);
	}

	public Page<ProductCategory> search(ProductCategoryQuery query) {
		return productCategoryDao.search(query);
	}

}