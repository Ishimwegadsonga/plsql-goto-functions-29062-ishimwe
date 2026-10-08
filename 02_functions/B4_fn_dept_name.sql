-- ============================================
-- B4: fn_dept_name
-- Returns department name for a dept_id
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
CREATE OR REPLACE FUNCTION fn_dept_name (
    p_dept_id IN NUMBER
) RETURN VARCHAR2 IS
    v_name departments.dept_name%TYPE;
BEGIN
    SELECT dept_name INTO v_name
    FROM departments
    WHERE dept_id = p_dept_id;

    RETURN v_name;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'UNKNOWN';
END fn_dept_name;
/













