<%--
  Created by IntelliJ IDEA.
  User: dodun
  Date: 11/17/2022
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment2/main.css" type="text/css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/main.css" type="text/css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="icon" href="<%=request.getContextPath()%>/assets/img/logo.jpg" type="image/x-icon">
</head>
<body>
<jsp:include page="/views/header.jsp"/>
<div class="main">

  <h1>Thanks for joining our email list</h1>

  <p>Here is the information that you entered:</p>

  <label>Email:</label>
  <span>${user.email}</span><br>
  <label>First Name:</label>
  <span>${user.firstName}</span><br>
  <label>Last Name:</label>
  <span>${user.lastName}</span><br>

  <p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>

  <form action="" method="post">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
  </form>
</div>
<jsp:include page="/views/footer.jsp"/>
</body>
</html>