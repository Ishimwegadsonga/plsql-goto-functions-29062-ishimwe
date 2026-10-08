




















-- ============================================
-- A4: Rewrite A1 Without GOTO (using IF/ELSIF/ELSE)
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER;
BEGIN
    -- Test 1: -5 (Negative)
    v_num := -5;
    DBMS_OUTPUT.PUT_LINE('TEST 1: value = ' || v_num);
    IF v_num < 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num || ' is Negative');
    ELSIF v_num = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is Zero');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_num || ' is Positive');
    END IF;
    DBMS_OUTPUT.PUT_LINE('--- Classification complete ---');
    DBMS_OUTPUT.PUT_LINE('');
    

    -- Test 2: 0 (Zero)
    v_num := 0;
    DBMS_OUTPUT.PUT_LINE('TEST 2: value = ' || v_num);
    IF v_num < 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num || ' is Negative');
    ELSIF v_num = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is Zero');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_num || ' is Positive');
    END IF;
    DBMS_OUTPUT.PUT_LINE('--- Classification complete ---');
    DBMS_OUTPUT.PUT_LINE('');

    -- Test 3: 42 (Positive)
    v_num := 42;
    DBMS_OUTPUT.PUT_LINE('TEST 3: value = ' || v_num);
    IF v_num < 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num || ' is Negative');
    ELSIF v_num = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Number is Zero');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_num || ' is Positive');
    END IF;
    DBMS_OUTPUT.PUT_LINE('--- Classification complete ---');
END;
/