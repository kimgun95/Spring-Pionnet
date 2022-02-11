
/* Drop Tables */

DROP TABLE employee CASCADE CONSTRAINTS;
DROP TABLE org_mst CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE employee
(
	-- 사번
	emp_no number(10) NOT NULL,
	-- 이름
	emp_name varchar2(100),
	CONSTRAINT pk_employee PRIMARY KEY (emp_no)
);


CREATE TABLE org_mst
(
	team_no number
);



/* Comments */

COMMENT ON COLUMN employee.emp_no IS '사번';
COMMENT ON COLUMN employee.emp_name IS '이름';



