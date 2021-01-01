<%--
  Created by IntelliJ IDEA.
  User: luong
  Date: 1/1/2021
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>jstl-core</title>
  </head>
  <body>

  <!-- link learn:  https://www.tutorialspoint.com/jsp/jstl_core_param_tag.htm -->
  <h2>c:set example</h2>
  <c:set scope="request" var="greeting" value="Hello every body"/>
  Greeting: <c:out value="${greeting}"/><p>
  <c:set scope="request" var="salary" value="${2000*2}"/>
  Salary: <c:out value="${salary}"/>

  <h2>c:remove example</h2>
  <c:remove scope="request" var="greeting"/>
  Greeting: <c:out value="${greeting}"/>

  <h2>c: catch example</h2>
  <c:catch var="ex"><%
  int a=100/0;
  %>
  </c:catch>
  <c:if test="${ex!=null}">
    Exception: ${ex} <br/>
    Message: ${ex.message}
  </c:if>

  <h2>c: choose-c:when - c:otherwise</h2>
  <c:set var="salary" scope="session" value="${2000*2}"></c:set>
  <p>Your salary is: <c:out value="${salary}"/></p>
  <c:choose>
    <c:when test="${salary<=0}">
      Salary is very low to survive.
    </c:when>
    <c:when test="${salary>1000}">
      Salary is very good.
    </c:when>
    <c:otherwise>
      No comment sir ...
    </c:otherwise>
  </c:choose>


  <h2>foreach Example</h2>
  <c:forEach var="i" begin="1" end="5">
    Item<c:out value="${i}"/><p>
  </c:forEach>

  <h2>C:forTokens example</h2>
  <c:forTokens items="Tu dep zai, Tu Thong minh" delims="," var="name">
    <c:out value="${name}"/><p>
  </c:forTokens>

  <h2>c:param-c:url-c:import</h2>
  <c:url value="" var="myURL">
    <c:param name="tracking" value="1234"/>
    <c:param name="reportType" value="summary"/>
  </c:url>
  <c:import url="${myURL}"/>

  <h2>c:redirect example</h2>
  <c:redirect url="http://www.photofuntoos.com"></c:redirect>


  </body>
  </body>
</html>
