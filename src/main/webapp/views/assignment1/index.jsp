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
</head>
<body>
<jsp:include page="<%=request.getContextPath()%>/views/header.jsp"/>
<div class="main">
    <form action="survey" method="post">
        <img src="images/murachlogo.jpg" alt="logo" />
        <h1>Survey</h1>
        <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>

        <h2>Your information:</h2>
        <label>First Name</label>
        <input type="text" name="firstName" required><br>
        <label>Last Name</label>
        <input type="text" name="lastName" required><br>
        <label>Email</label>
        <input type="email" name="email" required><br>
        <label>Date of Birth</label>
        <input type="text" name="DoB"><br>

        <h2>How did you hear about us?</h2>
        <p><input type=radio name="heardFrom" value="Social Media">Social Media
            <input type=radio name="heardFrom" value="Search Engine" checked>Search engine
            <input type=radio name="heardFrom" value="Friend">Word of mouth
            <input type=radio name="heardFrom" value="Other">Other</p>

        <h2>Would you like to receive announcements about new CDs and special offers?</h2>
        <p><input type="checkbox" name="wantsUpdates" >YES, I'd like that.</p>
        <p><input type="checkbox" name="emailOk" >YES, please send me email announcements.</p>


        <p>Please contact me by:
            <select name="contactVia">
                <option value="Both" selected>Email or postal mail</option>
                <option value="Email">Email only</option>
                <option value="Postal Mail">Postal mail only</option>
            </select>
        </p>

        <input type=submit value="Submit">
    </form>
</div>
    <jsp:include page="<%=request.getContextPath()%>/views/footer.jsp"/>
</form>
</body>
</html><