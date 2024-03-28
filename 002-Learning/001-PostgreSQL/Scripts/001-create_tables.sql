-- stage 1: create `companies` table
CREATE TABLE IF NOT EXISTS companies(
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    country_code VARCHAR(5) NOT NULL
);

-- stage 2: create `employees` table
CREATE TABLE IF NOT EXISTS employees(
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    age BIGINT NOT NULL,
    company_id BIGINT NOT NULL,
    FOREIGN KEY (company_id) REFERENCES companies(id)
);

-- stage 3: create `phones` table
CREATE TABLE IF NOT EXISTS phones(
    id BIGSERIAL PRIMARY KEY,
    phone VARCHAR(200) NOT NULL,
    employee_id BIGINT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

/*

\COPY companies(id, name, country_code) FROM 'C:/Users/Adombi/Downloads/companies.csv' DELIMITER ',' CSV HEADER;

\COPY employees(id, first_name, age, company_id) FROM 'C:/Users/Adombi/Downloads/employees.csv' DELIMITER ',' CSV HEADER;

\COPY phones(id, phone, employee_id) FROM 'C:/Users/Adombi/Downloads/phones.csv' DELIMITER ',' CSV HEADER;

*/

