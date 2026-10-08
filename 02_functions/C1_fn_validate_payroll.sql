
-- ============================================
-- C1: fn_validate_payroll
-- Validates payroll by composing B1-B4 functions
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_emp_id IN NUMBER
) RETURN VARCHAR2 IS
    v_salary employees.salary%TYPE;
    v_annual NUMBER;
    v_tax    NUMBER;
    v_net    NUMBER;
    v_years  NUMBER;
BEGIN
    SELECT salary INTO v_salary
    FROM employees
    WHERE emp_id = p_emp_id;

    v_annual := fn_annual_salary(p_emp_id);
    v_tax    := fn_calculate_tax(v_annual);
    v_net    := v_annual - v_tax;
    v_years  := fn_years_of_service(p_emp_id);

    IF v_net < 0 THEN
        RETURN 'INVALID: negative net pay';
    ELSIF v_years < 0 THEN
        RETURN 'INVALID: negative service years';
    ELSIF v_annual <= 0 THEN
        RETURN 'INVALID: non-positive annual salary';
    ELSE
        RETURN 'VALID | Annual=' || v_annual ||
               ' Tax=' || v_tax ||
               ' Net=' || v_net ||
               ' Years=' || v_years;
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: employee not found';
END fn_validate_payroll;
/

