-- ============================================
-- Test: Validate payroll for all employees
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
SET SERVEROUTPUT ON;

BEGIN
    FOR r IN (SELECT emp_id FROM employees ORDER BY emp_id) LOOP
        DBMS_OUTPUT.PUT_LINE(r.emp_id || ' => ' || fn_validate_payroll(r.emp_id));
    END LOOP;

    -- Also test the non-existent employee case
    DBMS_OUTPUT.PUT_LINE('999 => ' || fn_validate_payroll(999));
END;
/