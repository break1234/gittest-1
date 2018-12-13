package com.mm.bbs.util;

import java.io.InputStream;
import java.util.Iterator;
import java.util.Properties;

public class PropertiesReader {

	public String getValue(String urlName) {
        String url = null;
        Properties prop = new Properties();
        try {
            ClassLoader classLoader = PropertiesReader.class.getClassLoader();// 读取属性文件xxxxx.properties
            InputStream in = classLoader.getResourceAsStream("properties/dbconfig.properties");
            prop.load(in); /// 加载属性列表
            Iterator<String> it = prop.stringPropertyNames().iterator();
            while (it.hasNext()) {
                if (it.next().equals(urlName)) {
                    url = prop.getProperty(urlName);
                }
            }
            in.close();
        } catch (Exception e) {
            
        }
        return url;
    }
}
