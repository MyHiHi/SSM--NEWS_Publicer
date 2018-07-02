package com.itheima.utils;
import java.io.IOException;
import java.io.Reader;
import java.security.MessageDigest;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
/**
 * 工具类
 */
public class MybatisUtils {
	private static SqlSessionFactory sqlSessionFactory = null;
	/*// 初始化SqlSessionFactory对象
	static {
		try {
			// 使用MyBatis提供的Resources类加载MyBatis的配置文件
			Reader reader = 
					Resources.getResourceAsReader("mybatis-config.xml");
			// 构建SqlSessionFactory工厂
			sqlSessionFactory = 
					new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	// 获取SqlSession对象的静态方法
	public static SqlSession getSession()  {
		// 使用MyBatis提供的Resources类加载MyBatis的配置文件
		Reader reader=null;
		try {
			reader = Resources.getResourceAsReader("mybatis-config.xml");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
					// 构建SqlSessionFactory工厂
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		System.out.println("*******");
		System.out.println(sqlSessionFactory);
		System.out.println("*********");
		return sqlSessionFactory.openSession();
	}
	
	
	public static String md5Password(String password) {

        try {
            
        	MessageDigest digest = MessageDigest.getInstance("md5");
            byte[] result = digest.digest(password.getBytes());
            StringBuffer buffer = new StringBuffer();
          
            for (byte b : result) {

                int number = b & 0xff;
                String str = Integer.toHexString(number);
                if (str.length() == 1) {
                    buffer.append("0");
                }
                buffer.append(str);
            }

            
            return buffer.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }

    }
	
}
