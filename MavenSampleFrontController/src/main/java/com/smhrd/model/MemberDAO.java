package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory= SqlSessionManager.getSqlSession();
	
	//회원가입
	public int join(Member vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		//db에 값 삽입(insert())
		//성공한 경우 1, 실패한 경우 0
		int cnt = sqlSession.insert("com.smhrd.database.MemberMapper.insert",vo);
		// > ("Mapper로 찾아가서 insert(id값)를 찾는 경로", "매개변수이름")
		if(cnt>0) { 
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return cnt;
	}
	//>delete, insert, update : 반환타입 int
	
	//로그인
	public Member login(Member vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		Member loginM= sqlSession.selectOne("com.smhrd.database.MemberMapper.selectOne", vo);
		// > ("namespace.id", parameterType)
		
		sqlSession.close();
		
		return loginM;
	}
	
	//개인정보수정
	public int update(Member vo) {
		SqlSession sqlSession =sqlSessionFactory.openSession();
		
		//update -> 반환타입 : int ( 수정완료 = 1 수정실패 = 0 )
		int cnt = sqlSession.update("com.smhrd.database.MemberMapper.update", vo);
		if(cnt>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		return cnt;
	}
	
	//회원탈퇴
	public int delete(String id) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		int cnt = sqlSession.delete("com.smhrd.database.MemberMapper.delete", id);
		
		if(cnt>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return cnt;
	}
}
