/*
    001. 테이블에서 특정 열(Column) 선택하기
*/

/*
    1. SELECT절에서는 테이블로부터 출력하고 싶은 열 이름을 컴마(,)로 구분하여 작성한다.
    2. FROM절에서는 데이터를 저장하고 있는 테이블 명을 작성한다. => emp 테이블로 부터 데이터를 가져온다.
    3. SQL문장을 작성할 때는 대문자, 소문자 상관없이 수행된다.
*/
SELECT empno, ename, sal 
FROM emp;

/*
    가독성을 높이기 위해 SQL은 대문자로 작성하고, 
    컬럼명과 테이블명은 소문자로 작성하는게 좋긴하다.
*/
-- 1) 대문자 작성
SELECT EMPNO, ENAME, SAL
FROM EMP;
-- 2) 소문자 작성 -> 권장하는 SQL 작성법
SELECT empno, ename, sal
FROM emp;

/*
    SELECT절과 FROM절을 한 줄로 작성해도 되며
    여러 줄로 나누어 작성해도 SQL은 수행되지만,
    SQL이 점점 길어지게 되므로
    SELECT문과 FROM절을 각각 별도의 라인에 작성해주기를 권장한다.
*/
-- 한 줄로 작성
SELECT empno, ename, sal FROM emp;
-- 여러 줄로 나눠서 작성
SELECT empno, ename, sal
FROM emp;

/*
    SELECT절 다음 라인에 FROM절을 작성할 때는
    2칸에서 3칸 정도 공백을 주어 들여쓰기를 해주면
    SELECT절과 어느정도 길이가 맞아 가독성이 좋아진다.
*/
-- 들여쓰기 안 했을 때
SELECT empno, ename, sal, deptno
FROM emp;
-- 들여쓰기 했을 때
SELECT empno, ename, sal, deptno
  FROM emp;

/*
    SQL을 작성할 때는 작성 순서를 지켜주어야 한다.
    SELECT를 먼저 쓰고, FROM을 써야한다.
    순서를 바꿔서 FROM를 먼저 쓰고 SELECT를 작성하면 에러가 발생한다.
*/
-- 순서 오류
FROM emp SELECT ename -- SP2-0042: 알 수 없는 명령어 "from emp"