-- ============================================
-- B2: fn_years_of_service
-- Returns years since hire date
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_emp_id IN NUMBER
) RETURN NUMBER IS
    v_hire DATE;
BEGIN
    SELECT hire_date INTO v_hire
    FROM employees
    WHERE emp_id = p_emp_id;

    RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, v_hire) / 12);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END fn_years_of_service;
/