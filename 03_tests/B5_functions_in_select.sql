-- ============================================
-- B5: Functions Used in SQL SELECT
-- Student: Ishimwe Gad | ID: 29062
-- ============================================
SELECT e.emp_id,
       e.emp_name,
       e.salary                                       AS monthly_salary,
       fn_annual_salary(e.emp_id)                     AS annual_salary,
       fn_years_of_service(e.emp_id)                  AS years_service,
       fn_calculate_tax(fn_annual_salary(e.emp_id))   AS annual_tax,
       fn_dept_name(e.dept_id)                        AS department
FROM   employees e
ORDER  BY e.emp_id;