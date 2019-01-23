<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Źródła wiedzy</title>
    <jsp:include page="elements/header.jsp"/>
</head>
<body>
<jsp:include page="elements/menu.jsp"/>
<div class="container">
    <div class="row center"><h2>Twoje potwierdzone źródła wiedzy</h2>
        <table>
            <thead>
            <tr>
                <th>Lp.</th>
                <th>Nazwa</th>
                <th>Umiejętności</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${sources}" var="source" varStatus="status">
                <tr>
                    <td>${status.index + 1}.</td>
                    <td>${source.name}</td>
                    <td>
                        <c:forEach items="${source.connectedSkills}" var="skill" varStatus="innerStatus">
                            <c:choose>
                                <c:when test="${innerStatus.first}">
                                    <c:out value="${skill.name}"/>
                                </c:when>
                                <c:otherwise>
                                    <c:out value=", ${skill.name}"/>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div>
        <h2>Dostępne źródła wiedzy do potwierdzenia</h2>
        <table>
            <thead>
            <tr>
                <th>Lp.</th>
                <th>Nazwa</th>
                <th>Opis</th>
                <th>Link</th>
                <th>Umiejętności</th>
                <th>Akcje</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${availableSources}" var="source" varStatus="status">
                <tr>
                    <td>${status.index + 1}.</td>
                    <td>${source.name}</td>
                    <td>${source.description}</td>
                    <td><a href="${source.url}">Link</a></td>
                    <td>
                        <c:forEach items="${source.connectedSkills}" var="skill" varStatus="innerStatus">
                            <c:choose>
                                <c:when test="${innerStatus.first}">
                                    <c:out value="${skill.name}"/>
                                </c:when>
                                <c:otherwise>
                                    <c:out value=", ${skill.name}"/>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </td>
                    <td>
                        <c:url value="/user/sources/confirm" var="confirmSource">
                            <c:param name="sourceId" value="${source.id}"/>
                        </c:url>
                        <a href="${confirmSource}">Potwierdź</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
