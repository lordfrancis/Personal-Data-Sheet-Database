# Personal Data Sheet Database

This repository contains the MySQL database model for the Personal Data Sheet used in the Philippine Government. It includes comprehensive tables to store employee information and related data, adhering to the requirements of the official Personal Data Sheet.

## Features

- **Employee Information**: Stores basic personal, contact, and family information of employees.
- **Relational Tables**: Manages associated details such as children, educational background, work experience, training, skills, and more.
- **Comprehensive Data**: Supports data integrity with foreign key constraints and cascaded deletes.

## Database Schema Overview

### ER Diagram
Below is the Entity-Relationship Diagram generated from MYSQL Workbench's Reverse Engineer tool:

![image](https://github.com/user-attachments/assets/80715721-efbb-4180-8768-3ad1388768a8)


### Tables

1. **employee**: Stores primary personal details such as name, birthdate, contact information, and family members.
2. **employee_children**: Records details of employees' children.
3. **employee_educational_background**: Captures educational history, including degrees and awards.
4. **employee_csc_eligibility**: Tracks CSC eligibility and related details.
5. **employee_work_experience**: Logs work history, positions held, and government-related employment.
6. **employee_voluntary_work**: Records voluntary work details.
7. **employee_training_attended**: Tracks training sessions attended by the employee.
8. **employee_skills**: Lists skills of the employee.
9. **employee_recognition**: Tracks recognitions or awards received.
10. **employee_membership**: Records memberships in organizations.
11. **employee_other**: Captures other pertinent information, such as administrative offenses and legal issues.
12. **employee_references**: Stores references for the employee.

## Prerequisites

- MySQL 8.0 or later

## Installation

1. Clone this repository:
    ```bash
    git clone <repository-url>
    ```
2. Import the schema into your MySQL database:
    ```bash
    mysql -u <username> -p <database_name> < schema.sql
    ```

## Usage

1. Modify the database connection settings in your application to point to this database.
2. Use the provided tables for data insertion, updating, and querying as needed.

## Contributing

Contributions are welcome! Please submit a pull request with your proposed changes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

