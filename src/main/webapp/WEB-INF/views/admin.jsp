<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Panel administracyjny</title>
    <jsp:include page="elements/header.jsp"/>
</head>
<body>
<jsp:include page="elements/menu.jsp"/>
<div class="container">
    <div class="row center">
        <h2>Panel administracyjny obsługi źródeł wiedzy</h2>
        <div>
            <h3>Dodaj nowe źródło wiedzy</h3>
            <div>
                <form method="post" action="/admin/sources/add">
                    <div>Nazwa: <input type="text" required min="3" max="160" name="name" value="${newSource.name}"/>
                    </div>
                    <div>Opis: <textarea cols="20" rows="5" name="description"
                                         value="${newSource.description}"></textarea></div>
                    <div>Link: <input type="url" name="url" value="${newSource.url}"/></div>
                    <div>Umiejętności:
                        <select class="browser-default" required multiple name="connectedSkillsIds">
                            <c:forEach items="${availableSkills}" var="skill">
                                <option value="${skill.id}">${skill.category.concat(": ").concat(skill.name)}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div><input type="submit" value="Dodaj"/></div>
                </form>
            </div>
        </div>
        <div>
            <h3>Źródła wiedzy</h3>
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
                <c:forEach items="${sources}" var="source" varStatus="status">
                    <tr>
                        <td>${status.index}.</td>
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
                            <c:if test="${!source.active}">
                                <c:url value="/admin/sources/delete" var="removeSource">
                                    <c:param name="sourceId" value="${source.id}"/>
                                </c:url>
                                <a href="${removeSource}">Usuń</a>
                            </c:if>
                            <c:if test="${!source.active}">
                                <c:url value="/admin/sources/activate" var="activateSource">
                                    <c:param name="sourceId" value="${source.id}"/>
                                </c:url>
                                <a href="${activateSource}">Aktywuj</a>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('select').formSelect();
    });
</script>
</body>
</html>
