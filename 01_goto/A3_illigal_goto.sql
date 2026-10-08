
-- ============================================
-- A3: Illegal GOTO and Fix
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
SET SERVEROUTPUT ON;

-- ==========================================
-- PART 1: ILLEGAL GOTO (demonstrates the error)
-- ==========================================
-- The code below attempts to GOTO into a nested block.
-- This is illegal in PL/SQL (PLS-00375).
-- We execute it dynamically so the outer script can continue.

DECLARE
    v_sql VARCHAR2(500);
BEGIN
    DBMS_OUTPUT.PUT_LINE('=== PART 1: ILLEGAL GOTO ===');

    v_sql := q'[
        BEGIN
            GOTO inside_block;
            <<inside_block>>
            BEGIN
                DBMS_OUTPUT.PUT_LINE('Never reached');
            END;
        END;
    ]';

    BEGIN
        EXECUTE IMMEDIATE v_sql;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('ERROR CAUGHT: ' || SQLERRM);
    END;

    DBMS_OUTPUT.PUT_LINE('');
END;
/

-- ==========================================
-- PART 2: FIXED VERSION (legal GOTO)
-- ==========================================
BEGIN
    DBMS_OUTPUT.PUT_LINE('=== PART 2: FIXED VERSION ===');

    <<inside_block>>
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Legally entered nested block');
    END;

    GOTO after_block;
    DBMS_OUTPUT.PUT_LINE('Skipped line - not executed');

    <<after_block>>
    DBMS_OUTPUT.PUT_LINE('Arrived at after_block');

    DBMS_OUTPUT.PUT_LINE('--- Done ---');
END;
/