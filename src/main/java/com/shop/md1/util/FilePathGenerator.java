package com.shop.md1.util;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;

@Component
public class FilePathGenerator {
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	public File getUseResourceLoader(String filePath) throws Exception {
		
		String path = "classpath:/static/";
		
		resourceLoader.getResource(path);
		
		File file = new File(resourceLoader.getResource(path).getFile(), filePath);
		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		return file;
	}

}
