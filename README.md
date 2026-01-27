# ToDo List Web Application (JSP)

A simple ToDo List web application built using **JSP, JDBC, and MySQL**, deployed on **Apache Tomcat**.  
The project focuses on core Java web concepts such as user authentication and CRUD operations.

---

## 🔧 Technologies Used
- Java (JDK 21)
- JSP (Java Server Pages)
- JDBC
- MySQL
- Apache Tomcat 10
- HTML & CSS
- Git & GitHub

---

## ✨ Features
- User Registration and Login
- Session-based Authentication
- Add new tasks
- View all tasks
- Modify existing tasks
- Delete tasks
- Simple and clean UI

---

## 🗂️ Project Structure
```text
ToDoListApp
│
├── src/main/java
│ ├── dao
│ │ └── DAO.java
│ └── dto
│ ├── User.java
│ └── Task.java
│
├── src/main/webapp
│ ├── css
│ │ └── style.css
│ ├── WEB-INF
│ │ ├── lib
│ │ │ └── mysql-connector-j.jar
│ │ └── web.xml
│ ├── index.jsp
│ ├── login.jsp
│ ├── register.jsp
│ ├── UserHome.jsp
│ ├── ViewToDos.jsp
│ ├── modify.jsp
│ └── other JSP files
```

---

## 🛠️ How It Works
- JSP pages handle user interaction and form submission
- DAO layer manages all database operations using JDBC
- DTO classes are used to transfer data between layers
- MySQL is used to store users and tasks
- Apache Tomcat runs and serves the application

---

## 🚀 How to Run the Project
1. Install **JDK 21**
2. Install **Apache Tomcat 10**
3. Create a MySQL database and required tables
4. Update database credentials in `DAO.java`
5. Import the project into **Eclipse (Enterprise Java)**
6. Run the project on Tomcat Server
7. Access the app at:
http://localhost:8080/ToDoListApp/
---

## 📌 Learning Outcome
- Hands-on experience with JSP and JDBC
- Understanding of MVC-like structure using DAO and DTO
- Working with Apache Tomcat server
- Version control using Git and GitHub

---

## 👤 Author
**Lokesh Babu Katta**  

