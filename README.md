
![1  HLD](https://user-images.githubusercontent.com/58342196/202895680-f11a8c9c-80c3-498b-9563-975f46b881f5.png)



# Problem Statement : 
This is the Dev Center Project - IT-Service-Management-App.

This Project is a IT service Management app for the employee's when if they are a part of this organisation and
if they face any issue they can log a ticket and the service engineer will work on it.

The Project should have the following -

Ability to login as an Admin.
Ability to register new Employee.
Ability to assign the ticket to an Engineer.
Ability to close the ticket once the issue is resolved.
Employee can Login but not register onto the portal and is able to log a ticket.
Service Engineer can resolve the assigned issue and update the status.
This thus provides a Administration overview of the App.

Dev Academy Project Statement JIRA Link

https://jira2.cerner.com/browse/DEVACDMY-37197
=======

# Technology Stack :

* Ruby version - 2.6.6
* Rails version -5.2.2

------------

# Features :

## LOGIN MODULE

Given an User, When logs in using the credentials provided by the admin.

a. Accept email and password.

b. Verify the account with the database by sending a POST request.

c. On successful Authentication, routes to a page depending on the user
 * Employee - routes to the ticket generation page
 * Service - routes to tickets assigned page
 * Admin - routes to multipurpose page where the admin can generate a
           employee and should be able to generate the login credentials
            by registering the employees .Also, can view the logged tickets

## EMPLOYEE MODULE
After logging in with the valid credentials issued by the ADMIN.

a. Should be able to access employee landing page.

b. Should be able to log ticket by sending a post request through the forms submit.

c. Should be able to see the logged tickets by him on the landing page.

## ADMIN MODULE
After logging in with the root credentials.

a. Should be able to see the admins landing page.

b. Should be able to see employee's list

c. Should be able to create a new Employee-User with their credentials.

d. Should be able to access the list of tickets which are logged by different employee's.

e. Should be able to assign a ticket to the service Engineer.

f. Should be able to close the ticket once the ticket is complete by service Engineer.

## SERVICE MODULE
After logging in with the credentials issues by the Admin.

a. Should be able to see the service landing page.

b. Should be able to see tickets assigned to him.

c. Should be able to see each ticket detauls and update status as he works on it.


