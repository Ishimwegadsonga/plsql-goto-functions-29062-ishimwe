-- ============================================
-- A2: Salary Review using GOTO
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER;
    v_raise  NUMBER;
BEGIN
    -- Test 1: Low band (< 3000)
    v_salary := 2000;
    DBMS_OUTPUT.PUT_LINE('TEST 1: salary = ' || v_salary);
    IF v_salary < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Invalid salary.');
        GOTO finish_1;
    END IF;
    IF v_salary < 3000 THEN
        v_raise := v_salary * 0.10;
        DBMS_OUTPUT.PUT_LINE('Low band -> 10% raise: ' || v_raise);
        GOTO finish_1;
    END IF;
    IF v_salary < 7000 THEN
        v_raise := v_salary * 0.07;
        DBMS_OUTPUT.PUT_LINE('Mid band -> 7% raise: ' || v_raise);
        GOTO finish_1;
    END IF;
    v_raise := v_salary * 0.04;
    DBMS_OUTPUT.PUT_LINE('High band -> 4% raise: ' || v_raise);
    <<finish_1>>
    DBMS_OUTPUT.PUT_LINE('Review complete for salary ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('');

    -- Test 2: Mid band (3000-6999)
    v_salary := 5000;
    DBMS_OUTPUT.PUT_LINE('TEST 2: salary = ' || v_salary);
    IF v_salary < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Invalid salary.');
        GOTO finish_2;
    END IF;
    IF v_salary < 3000 THEN
        v_raise := v_salary * 0.10;
        DBMS_OUTPUT.PUT_LINE('Low band -> 10% raise: ' || v_raise);
        GOTO finish_2;
    END IF;
    IF v_salary < 7000 THEN
        v_raise := v_salary * 0.07;
        DBMS_OUTPUT.PUT_LINE('Mid band -> 7% raise: ' || v_raise);
        GOTO finish_2;
    END IF;
    v_raise := v_salary * 0.04;
    DBMS_OUTPUT.PUT_LINE('High band -> 4% raise: ' || v_raise);
    <<finish_2>>
    DBMS_OUTPUT.PUT_LINE('Review complete for salary ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('');

    -- Test 3: High band (>= 7000)
    v_salary := 10000;
    DBMS_OUTPUT.PUT_LINE('TEST 3: salary = ' || v_salary);
    IF v_salary < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Invalid salary.');
        GOTO finish_3;
    END IF;
    IF v_salary < 3000 THEN
        v_raise := v_salary * 0.10;
        DBMS_OUTPUT.PUT_LINE('Low band -> 10% raise: ' || v_raise);
        GOTO finish_3;
    END IF;
    IF v_salary < 7000 THEN
        v_raise := v_salary * 0.07;
        DBMS_OUTPUT.PUT_LINE('Mid band -> 7% raise: ' || v_raise);
        GOTO finish_3;
    END IF;
    v_raise := v_salary * 0.04;
    DBMS_OUTPUT.PUT_LINE('High band -> 4% raise: ' || v_raise);
    <<finish_3>>
    DBMS_OUTPUT.PUT_LINE('Review complete for salary ' || v_salary);
END;
/