<%--
  Created by IntelliJ IDEA.
  User: dodun
  Date: 11/11/2022
  Time: 11:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment1/main.css" type="text/css">
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

    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
        email address below.</p>
    <p><i>${message}</i></p>
    <form action="<%=request.getContextPath()%>/assignment1/testServlet" method="get">
        <input type="hidden" name="action" value="add">
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}"><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"><br>
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>

</div>
<jsp:include page="/views/footer.jsp"/>
</body>
</html>