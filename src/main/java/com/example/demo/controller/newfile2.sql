
/* Drop Tables */

DROP TABLE employee CASCADE CONSTRAINTS;
DROP TABLE org_mst CASCADE CONSTRAINTS;




/* Create Tables */

-- 직원명
CREATE TABLE employee
(
	-- 사번
	emp_no number(10) NOT NULL,
	-- 이름
	emp_name varchar2(100),
	CONSTRAINT pk_employee PRIMARY KEY (emp_no)
);


-- 부서
CREATE TABLE org_mst
(
	-- 팀번호
	team_no number NOT NULL,
	-- 부서이름
	team_name varchar2(100),
	CONSTRAINT pk_org_mst PRIMARY KEY (team_no)
);



/* Comments */

COMMENT ON TABLE employee IS '직원명';
COMMENT ON COLUMN employee.emp_no IS '사번';
COMMENT ON COLUMN employee.emp_name IS '이름';
COMMENT ON TABLE org_mst IS '부서';
COMMENT ON COLUMN org_mst.team_no IS '팀번호';
COMMENT ON COLUMN org_mst.team_name IS '부서이름';



