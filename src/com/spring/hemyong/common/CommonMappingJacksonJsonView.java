package com.spring.hemyong.common;

import java.util.Map;

import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

public final class CommonMappingJacksonJsonView extends MappingJackson2JsonView {
	@Override
	protected Object filterModel(Map<String, Object> model) {
		return super.filterModel(model);
	}
}
