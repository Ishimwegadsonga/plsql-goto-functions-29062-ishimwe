 PL/SQL GOTO Statements and Functions

Student: Ishimwe Gad
Student ID: 29062
Course: INSY 8311 – Database Development with PL/SQL
Instructor:Eric Maniraguha
Assignment:Individual Assignment III
Date: October 2026
 Overview
This project demonstrates PL/SQL GOTO statements, stored functions,
exception handling, and using functions inside SQL queries.

 Repository Structure

plsql-goto-functions-29062-Ishimwe/
├── README.md
├── .gitignore
├── 00_setup/
│   └── create_tables.sql
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
└── docs/
    └── REFLECTION.md
 How to Run
1. Run `00_setup/create_tables.sql` to create tables.
2. Run all files in `02_functions/` to compile the stored functions.
3. Run the GOTO scripts in `01_goto/`.
4. Run the test scripts in `03_tests/`.
5. Verify results using the screenshots in `screenshots/`.

 Notes / AI Assistance
I used an AI assistant to help draft the code structure and explain PL/SQL
GOTO legality rules. All code was tested and I understand every line submitted.