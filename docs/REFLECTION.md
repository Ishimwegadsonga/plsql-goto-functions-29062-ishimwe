REFLECTION

GOTO Statements

In this assignment 3 practised PL/SQL GOTO statements. GOTO transfers
control to a labelled block within the same or enclosing scope. It is
legal to jump forward within the same or an enclosing block, but illegal
to jump into a nested block or into the body of an IF/loop from outside.
In A3 I demonstrated the illegal case (PLS-00375) and then fixed it by
placing the label before the nested block.

Although GOTO can simplify early exits, it hurts readability and
maintainability, so in A4 I rewrote A1 using IF/ELSIF/ELSE instead.

Functions

For Part B I created five stored functions: fn_annual_salary,
fn_years_of_service, fn_calculate_tax, fn_dept_name, and
fn_validate_payroll. Each handles NO_DATA_FOUND gracefully with an
EXCEPTION block, and fn_validate_payroll composes the other functions
to produce a full payroll validation. In B5 I used functions directly
inside a SQL SELECT statement, a key advantage over procedures.

Exception Handling

Exception handling improved robustness. For example, fn_dept_name
returns 'UNKNOWN' when a department is not found, and fn_validate_payroll
returns 'INVALID: employee not found' for missing employees.

AI Assistance

I used an AI assistant to help lay out the folder structure, verify
syntax, and explain GOTO rules. All code was tested in Oracle SQL
Developer, and I can explain each line.

Lessons Learned

GOTO should be used sparingly and only when it genuinely improves
control flow.

Functions differ from procedures: they must return a value and can
be called from SQL.

Composing functions makes code modular and testable.