package com.smhrd.database;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//myBatis 설정파일(mybatis-config.xml) 내용을 읽어서 db 커넥션 후 세션 반환
//SqlSessionFactoryBuilder : config 파일 바탕으로 SessionFactory 생성
//SqlSessionFactory : Session 생성
//SqlSession : sql 실행, 트랜잭션 관리
public class SqlSessionManager {
	public static SqlSessionFactory sqlSession;
	
	static {
		String resource = "com/smhrd/database/mybatis-config.xml";
		Reader reader;
		try {
			reader = Resources.getResourceAsReader(resource);
			sqlSession = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//생성된 factory 반환
	public static SqlSessionFactory getSqlSession() {
		return sqlSession;
	}

}
