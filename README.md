## Stack
- Docker: https://www.docker.com/get-started
- Java
- Spring Boot
- MySQL
- NGINX
- Maven

## Run
- Run command `docker-compose up`
- Access to http://localhost/

## Use
Get All Employees
http://localhost/employee/getall

## Get By ID
Example: http://localhost/employee/{id}
http://localhost/employee/8

## Create New Employee
   Using Postman - POST as Content Type: application/json
   https://localhost/employee/add
  {"firstname":"tom","lastname":"brady","middleinitial":"t","dateofbirth":"1979-03-09","dateofemployment":"2000-04-01","status":"active"}

## Update Employee
   Using Postman - PUT as Content Type: application/json
   https://localhost/employee/update/{id}
   {"firstname":"Tom","lastname":"Brady","middleinitial":"t","dateofbirth":"1979-03-09","dateofemployment":"2000-04-01","status":"active"}


## Delete Employee
  Example: http://localhost/employee/delete/{id}
  Using Postman - GET
  Headers: "Authorization":"914a8f2bd7e5e5681c8e89e8fb535be2"
  URL: http://localhost/employee/delete/2

## POSTMAN Download: https://www.getpostman.com/downloads/

## PHPMYADMIN:
http://localhost:9191/
User: root
Pass: kenzan
