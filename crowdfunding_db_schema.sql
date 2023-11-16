-- Create category table
CREATE TABLE category (
    category_id VARCHAR (100) NOT NULL,
    category VARCHAR (100) NOT NULL,
        PRIMARY KEY (category_id)
);

-- Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR (100) NOT NULL,
    subcategory VARCHAR (100) NOT NULL,
        PRIMARY KEY (subcategory_id)
)

-- Create contacts table
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR (100) NOT NULL,
    last_name VARCHAR (100) NOT NULL,
    email VARCHAR (100) NOT NULL,
        PRIMARY KEY (contact_id)
);

-- Create campaign 
CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR (100) NOT NULL,
    description VARCHAR (300) NOT NUll,
    goal INT NOT NULL,
    pledged INT NOT NULL,
    outcome VARCHAR (100),
    backers_count INT NOT NULL,
    country VARCHAR (100) NOT NULL,
    currency VARCHAR (100) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR (100) NOT NULL,
    subcategory_id VARCHAR (100) NOT NULL,
        PRIMARY KEY (cf_id)
        FOREIGN KEY (category_id) REFERENCES category(category_id),
        FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
        FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;