CREATE TABLE category(
category_id VARCHAR(10) NOT NULL,
category VARCHAR(50),
PRIMARY KEY (category_id)
);

CREATE TABLE subcategory(
subcategory_id VARCHAR(10) NOT NULL,
subcategory VARCHAR(50),
PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts(
contact_id INT NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50),
PRIMARY KEY (contact_id)
);

CREATE TABLE campaign(
cf_id INT NOT NULL,
contact_id INT,
company_name VARCHAR(50),
description VARCHAR(60),
goal INT,
pledged INT,
outcome VARCHAR(50),
backers_count INT,
country VARCHAR(50),
currency VARCHAR(50),
launched_date DATE,
end_date DATE,
category_id VARCHAR(10),
subcategory_id VARCHAR(10),
PRIMARY KEY (cf_id),
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);