<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>メッセージ一覧</h2>
        <table>
            <tbody>
                <tr bgcolor="#EEEEEE">
                    <th class="id">ID</th>
                    <th>タスク内容</th>
                </tr>
                <c:forEach var="task" items="${tasks}">
                <tr>
                    <td class="id">
                        <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                            <c:out value="${task.id}" />
                        </a>
                    </td>
                    <td>
                        <c:out value="${task.content}" />
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <p><a href="${pageContext.request.contextPath}/new">新規タスクの追加</a></p>
    </c:param>
</c:import>
