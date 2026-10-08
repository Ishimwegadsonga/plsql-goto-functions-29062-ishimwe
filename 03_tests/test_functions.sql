-- ============================================
-- Test: Call all functions for each employee
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
SET SERVEROUTPUT ON;

BEGIN
    FOR r IN (SELECT emp_id, emp_name, dept_id FROM employees ORDER BY emp_id) LOOP
        DBMS_OUTPUT.PUT_LINE(
            r.emp_id || ' - ' || r.emp_name ||
            ' | Annual=' || fn_annual_salary(r.emp_id) ||
            ' | Years='  || fn_years_of_service(r.emp_id) ||
            ' | Tax='    || fn_calculate_tax(fn_annual_salary(r.emp_id)) ||
            ' | Dept='   || fn_dept_name(r.dept_id)
        );
    END LOOP;
END;
/