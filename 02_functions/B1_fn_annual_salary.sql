-- ============================================
-- B1: fn_annual_salary
-- Returns annual salary (monthly * 12)
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_emp_id IN NUMBER
) RETURN NUMBER IS
    v_monthly employees.salary%TYPE;
BEGIN
    SELECT salary INTO v_monthly
    FROM employees
    WHERE emp_id = p_emp_id;

    RETURN v_monthly * 12;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END fn_annual_salary;
/