﻿-- CATEGORIES 테이블 생성
CREATE TABLE CATEGORIES(	
	CATEGORIES_ID VARCHAR2(3) NOT NULL,
	CATEGORIES_NAME VARCHAR2(30) NOT NULL,
	CATEGORIES_DESC VARCHAR2(300) NOT NULL
);

-- 제약조건
ALTER TABLE CATEGORIES ADD CONSTRAINT PK_CATEGORIES_CATEGORIES_ID primary key(CATEGORIES_ID);