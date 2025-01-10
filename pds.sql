-- Documentation for the MYSQL Database Model for the Philippine Government Personal Data Sheet

-- Main Table: Employee Information
CREATE TABLE employee (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    lastname VARCHAR(35),
    firstname VARCHAR(35),
    middlename VARCHAR(35),
    suffix VARCHAR(10),
    date_of_birth DATE,
    place_of_birth VARCHAR(100),
    gender VARCHAR(50),
    civil_status VARCHAR(50),
    height INT,
    weight INT,
    blood_type VARCHAR(5),
    gsis_no VARCHAR(50),
    pagibig_no VARCHAR(50),
    philhealth_no VARCHAR(50),
    sss_no VARCHAR(50),
    tin_no VARCHAR(50),
    agency_employee_no VARCHAR(50),
    citizenship VARCHAR(25),
    citizenship_acquisition VARCHAR(50),
    citizenship_details VARCHAR(25),
    residential_house_no VARCHAR(25),
    residential_street VARCHAR(25),
    residential_subdivision VARCHAR(25),
    residential_barangay VARCHAR(25),
    residential_municipality VARCHAR(25),
    residential_province VARCHAR(25),
    residential_zipcode VARCHAR(10),
    permanent_house_no VARCHAR(25),
    permanent_street VARCHAR(25),
    permanent_subdivision VARCHAR(25),
    permanent_barangay VARCHAR(25),
    permanent_municipality VARCHAR(25),
    permanent_province VARCHAR(25),
    permanent_zipcode VARCHAR(10),
    telephone_no VARCHAR(20),
    mobile_no VARCHAR(20),
    email VARCHAR(50),
    spouse_surname VARCHAR(35),
    spouse_firstname VARCHAR(35),
    spouse_middlename VARCHAR(35),
    spouse_suffix VARCHAR(10),
    spouse_occupation VARCHAR(30),
    spouse_employer_business VARCHAR(30),
    spouse_employer_business_address VARCHAR(100),
    spouse_telephone_no VARCHAR(20),
    father_lastname VARCHAR(35),
    father_firstname VARCHAR(35),
    father_middlename VARCHAR(35),
    father_suffix VARCHAR(10),
    mother_maiden_name VARCHAR(100),
    mother_lastname VARCHAR(35),
    mother_firstname VARCHAR(35),
    mother_middlename VARCHAR(35)
);

-- Child Information Table
CREATE TABLE employee_children (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    child_name VARCHAR(100),
    date_of_birth DATE,
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- Educational Background Table
CREATE TABLE employee_educational_background (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    educational_level VARCHAR(25),
    school VARCHAR(50),
    degree VARCHAR(50),
    year_from YEAR,
    year_to YEAR,
    year_graduated YEAR,
    awards VARCHAR(50),
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- CSC Eligibility Table
CREATE TABLE employee_csc_eligibility (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    license_name VARCHAR(100),
    rating VARCHAR(15),
    date_of_examination DATE,
    place_of_examination VARCHAR(100),
    license_no VARCHAR(50),
    date_of_validity DATE,
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- Work Experience Table
CREATE TABLE employee_work_experience (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    employed_from DATE,
    employed_to DATE,
    position_title VARCHAR(50),
    department VARCHAR(100),
    salary INT,
    salary_grade VARCHAR(10),
    appointment_status VARCHAR(20),
    is_government ENUM('Y', 'N'),
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- Voluntary Work Table
CREATE TABLE employee_voluntary_work (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    name_and_address_of_organization VARCHAR(100),
    volunteer_from DATE,
    volunteer_to DATE,
    number_of_hours INT,
    nature_of_work VARCHAR(50),
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- Training Attended Table
CREATE TABLE employee_training_attended (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    title VARCHAR(100),
    training_from DATE,
    training_to DATE,
    number_of_hours INT,
    training_type VARCHAR(25),
    sponsor VARCHAR(50),
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- Skills Table
CREATE TABLE employee_skills (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    skill_name VARCHAR(50),
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- Recognition Table
CREATE TABLE employee_recognition (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    recognition_name VARCHAR(50),
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- Membership Table
CREATE TABLE employee_membership (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    organization_name VARCHAR(50),
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- Other Information Table
CREATE TABLE employee_other (
    employee_id BIGINT UNSIGNED PRIMARY KEY,
    is_third_degree ENUM('Y', 'N'),
    is_fourth_degree ENUM('Y','N'),
    degree_details VARCHAR(50),
    is_guilty_admin_offense ENUM('Y','N'),
    admin_offense_details VARCHAR(50),
    is_charged_to_court ENUM('Y','N'),
    charged_to_court_filed DATE,
    charged_to_court_status VARCHAR(25),
    is_convicted_crime ENUM('Y', 'N'),
    crime_details VARCHAR(50),
    is_separated_from_service ENUM('Y','N'),
    separated_from_service_details VARCHAR(50),
    is_candidate ENUM('Y', 'N'),
    candidate_details VARCHAR(50),
    is_resigned ENUM('Y','N'),
    resigned_details VARCHAR(50),
    is_immigrant ENUM('Y', 'N'),
    immigrant_details VARCHAR(50),
    is_indegenous ENUM('Y', 'N'),
    indegenous_details VARCHAR(50),
    is_pwd ENUM('Y', 'N'),
    pwd_id VARCHAR(50),
    is_solo_parent ENUM('Y', 'N'),
    solo_parent_id VARCHAR(50),  
    gov_id_name VARCHAR(20),
    gov_id_no VARCHAR(30),
    gov_id_issuance_date DATE,
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

-- References Table
CREATE TABLE employee_references (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    employee_id BIGINT UNSIGNED,
    reference_name VARCHAR(100),
    reference_address VARCHAR(100),
    reference_telno VARCHAR(20),
    FOREIGN KEY(employee_id) REFERENCES employee(id) ON DELETE CASCADE
);
