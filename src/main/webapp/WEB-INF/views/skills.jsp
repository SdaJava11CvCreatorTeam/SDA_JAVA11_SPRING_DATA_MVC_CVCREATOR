<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Twoje umiejętności</title>
    <jsp:include page="elements/header.jsp"/>
</head>
<body>
<jsp:include page="elements/menu.jsp"/>
<div class="container">
    <div class="row center"><h2>${user.login}, Twoje umiejętności</h2>
        <table>
            <thead>
            <tr>
                <th>Lp.</th>
                <th>Umiejętność</th>
                <th>Kategoria</th>
                <th>Poziom</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${uniqueSkills}" var="skill" varStatus="status">
                <tr>
                    <td>${status.index + 1}.</td>
                    <td>${skill.name}</td>
                    <td>${skill.category}</td>
                    <td>${skillsOccurrences.get(skill)}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
