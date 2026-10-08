-- ============================================
-- B3: fn_calculate_tax
-- Progressive tax: 0% up to 30k, 15% up to 60k, 25% above
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_annual_salary IN NUMBER
) RETURN NUMBER IS
    v_tax NUMBER := 0;
BEGIN
    IF p_annual_salary IS NULL OR p_annual_salary <= 0 THEN
        RETURN 0;
    END IF;

    IF p_annual_salary <= 30000 THEN
        v_tax := 0;
    ELSIF p_annual_salary <= 60000 THEN
        v_tax := (p_annual_salary - 30000) * 0.15;
    ELSE
        v_tax := (30000 * 0.15) + ((p_annual_salary - 60000) * 0.25);
    END IF;

    RETURN ROUND(v_tax, 2);
END fn_calculate_tax;
/