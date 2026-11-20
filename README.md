# Lab 3 - SQL Practice in MySQL Workbench
This lab will meet the following objectives:

1.  Write SQL commands to create database objects such as tables, indexes, and views as well as commands to define access rights to those database objects.

2.  Write SQL commands to insert, update, delete, and retrieve data within the database tables.

## Instructions
For this lab, you will practice writing SQL commands that create tables, insert, delete, update and retrieve data.  Using the ER model below, you will re-create the model in MySQL workbench and insert the data found in the provided text files of this repository.  

![alt text](https://instructorc.github.io/site/slides/database/images/general/table_view.PNG)

You will record your relationships within this readme file.  When writing down the relationships, make sure to adhere to the following bullet points below.


## Requirements

### Deliverable 1 - Data Definition Language (5 Points)
1 Recreate the database schema identified above.  You can do this one of two ways.  You can use the Modeling tool in Workbench or you can write the SQL commands to create the database and related tables.  Whether you create the database schema using the database modeling tool in MySQL workbench or you create via command line, you will need to provide the commands used to create the database and related tables.  You can include those commands within the file you will use for deliverable 2.  
  1. Make sure all of the relationships are properly configured
  2. Make sure the primary key is specified and auto increments for both the **CLIENT** and **POLICY** table
  3. Make sure all columns in the database are marked as NOT NULL
  4. Enforce that the relationship between **CLIENT** and **POLICY** are strong and enforce cascading if either a **CLIENT** or **POLICY** is deleted.
  5. Include the SQL commands used for creating the database and tables into the file you will use for deliverable 2.


### Deliverable 2 - Data Manipulation Language (10 Points)
Create a file called **lab3.sql** and add the following queries into the file.  You will need to take a screenshot of the rendered output for each command and place a screenshot of your output beneath the example output provided.  Make sure to place a SQL comment above each command identifying the query.  In order to make changes to the data, you may need to change the SQL Editor settings.  You can do this by navigating to EDIT -> SQL Editor -> and unchecking Safe Updates.  It is advised to restart MySQL Workbench after changing this setting.
<br>First, write the SQL commands to insert data into each of the tables. Your insert statements should also be included in the lab3.sql file.  **The data files are listed in the repository for this lab**
1.  Write the SQL command to list all clients and all the columns pertaining to a client.  The intended output is below.
<img width="651" height="311" alt="1" src="https://github.com/user-attachments/assets/6a9874c0-ee2e-4432-8d2e-2e053814ec01" />

2.  Write the SQL command to change client Chris Isaac to Chris Pearson.  No output for this command

3.  Write the SQL command to display all policies that have a policy type of 'Home'.
<img width="640" height="198" alt="3" src="https://github.com/user-attachments/assets/d7ce9bd8-fa03-4fad-93fe-d8effd6870d1" />

4.  Write the SQL command to display all columns for policies that have yearly terms
<img width="609" height="170" alt="4" src="https://github.com/user-attachments/assets/13c27435-e22f-43ac-9313-db4dcb7e5df5" />

5.  Write the SQL command that displays the client name, address, and age sorted by age in descending order in the figure below
<img width="496" height="238" alt="5" src="https://github.com/user-attachments/assets/6e954ed5-b295-4d8e-92de-11bd343dd3ca" />

6.  Write the SQL command that calculates the average age of all clients
<img width="265" height="146" alt="6" src="https://github.com/user-attachments/assets/f941aa91-3249-43f5-b753-8602efd77ed5" />

7.  Write the SQL command that lists the name and age of clients who are between the ages of 22 and 40
<img width="479" height="173" alt="7" src="https://github.com/user-attachments/assets/b8b7307d-c1db-47f4-8436-6faa5b4fe559" />

8.  Write the SQL command that lists all home policies that have a policy limit less than or equal to $250,000.
<img width="566" height="103" alt="8" src="https://github.com/user-attachments/assets/f9f823a9-f8fe-449a-8a39-659db7785675" />

9.  Write the SQL  command that lists the client's name and address for all addresses that contain 'Featherstone' and order by age in ascending order.
<img width="328" height="105" alt="9" src="https://github.com/user-attachments/assets/53753dd2-a56b-4504-808f-a17064236d5e" />

10.  Write the SQL command that lists the name, address, and age of clients who are age 35 and above and whose address contains the number 8
<img width="459" height="146" alt="10" src="https://github.com/user-attachments/assets/d0efc668-b3f5-4a9b-b78a-ac2d00ccc961" />

11.  Write the SQL command that returns the total # of policies offered
<img width="172" height="54" alt="11" src="https://github.com/user-attachments/assets/f5aea05e-e6e4-4fb3-a760-6bb7cc142a23" />

12.  Write the SQL command that returns the policy type and the total count of policies by type
<img width="301" height="61" alt="12" src="https://github.com/user-attachments/assets/c6295f92-f220-4d8a-9a97-e7ffad3e371a" />

13.  Write the SQL command that returns the youngest and oldest client

<img width="491" height="83" alt="13" src="https://github.com/user-attachments/assets/771f9425-8cfa-4933-8e85-e2a36f19abc6" />

14.  Write the SQL command that lists all clients that have a home insurance policy
<img width="896" height="260" alt="14" src="https://github.com/user-attachments/assets/106ac1cf-e828-411c-908b-7c7e74762b45" />

15.  Write the SQL command that lists all of the instances of a policy where the client ID is equal to #2
<img width="900" height="139" alt="15" src="https://github.com/user-attachments/assets/594a41c9-43ce-489c-ac06-fcd5adbc7e83" />


### Extra Credit (2 Points)
List all clients along with their respective policies.<br>
<img width="1378" height="373" alt="16" src="https://github.com/user-attachments/assets/93576272-d731-4f1e-b271-3f36ec98b990" />




## Submission Guidelines

For this lab, you will submit 2 items to the repository that has been assigned to you.  The two items that you will need to submit are listed below: 
1. The README.MD file that includes screenshots of the result grid window for each SQL query
   1. Include the image beneath the output image I provide

2. The **lab3.sql** file.  The lab3.sql file should be uploaded to your repository

Once you have completed both of the items above, you will need to submit the link to your repository for lab3 prior to the due date and time listed.  Make sure you receive an email confirmation notifying you that the assignment has been submitted.


## Lab Resources
- [W3 Schools SQL tutorial](https://www.w3schools.com/sql/)
- [Make a ReadMe file Web-based Editor](https://www.makeareadme.com/)
