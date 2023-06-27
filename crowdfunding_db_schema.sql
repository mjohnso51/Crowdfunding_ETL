-- Crowdfunding Schema

-- categories
CREATE TABLE category (
		category_id VARCHAR(30) PRIMARY KEY NOT NULL,
		category VARCHAR(30) NOT NULL
);

SELECT * FROM category;
		
--subcategories
CREATE TABLE subcategory (
		subcategory_id VARCHAR(30) PRIMARY KEY NOT NULL,
		subcategory VARCHAR(30) NOT NULL
);

SELECT * FROM subcategory;

--contacts
CREATE TABLE contacts (
		contact_id INT PRIMARY KEY NOT NULL,
		first_name VARCHAR(30) NOT NULL,
		last_name VARCHAR(30) NOT NULL,
		email VARCHAR (100) NOT NULL
);

SELECT * FROM contacts;

--campaign
CREATE TABLE campaign(
		cf_id INT PRIMARY KEY NOT NULL,
		contact_id INT NOT NULL,
		company_name VARCHAR(100) NOT NULL,
		description VARCHAR(100) NOT NULL,
		goal float NOT NULL,
		pledged float NOT NULL,
		outcome VARCHAR (30) NOT NULL,
 		backers_count INT NOT NULL,
		country VARCHAR(30) NOT NULL,
		currency VARCHAR(10) NOT NULL,
		launched_date DATE NOT NULL,
		end_date DATE NOT NULL,
		category_id VARCHAR(10) NOT NULL,
		subcategory_id VARCHAR(10) NOT NULL,
			FOREIGN KEY (category_id) REFERENCES category(category_id),
			FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
			FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM campaign;