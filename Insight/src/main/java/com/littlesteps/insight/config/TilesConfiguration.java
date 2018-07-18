package com.littlesteps.insight.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

@Configuration
public class TilesConfiguration {
 
	@Bean
	public TilesConfigurer tilesConfigurer() {
		TilesConfigurer tilesConfigurer = new TilesConfigurer();
 
		String[] defs = { "tiles-definitions.xml" };
 
		tilesConfigurer.setDefinitions(defs);
 
		return tilesConfigurer;
	}
 
	@Bean
	public UrlBasedViewResolver tilesViewResolver() {
		UrlBasedViewResolver tilesViewResolver = new UrlBasedViewResolver();
 
		tilesViewResolver.setViewClass(TilesView.class);
		System.out.println("Called");
 
		return tilesViewResolver;
	}
}