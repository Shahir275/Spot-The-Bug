# JSP Spot the Bug Challenge

This project demonstrates:
1. Thread-safety problems caused by JSP declarations for request-specific data.
2. The difference between `<jsp:forward>` and `response.sendRedirect()`.
3. Correct use of request scope and session scope.

## Build
```powershell
mvn clean package
```

The WAR file is created at:
`target/spot-the-bug-jsp.war`

Deploy it to Tomcat `webapps`, start Tomcat, then open:
`http://localhost:8080/spot-the-bug-jsp/`

## Expected Output
Enter `Ravi` and submit.

You should see:
- Welcome Ravi
- Request Scope User: Ravi
- Session Scope User: Ravi
