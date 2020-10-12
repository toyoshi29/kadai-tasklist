<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                <h2>ID:${task.id} のタスク詳細</h2>
                <table>
                    <tbody>
                        <tr>
                            <th class="show">タスク内容</th>
                            <td><c:out value="${task.content}" /></td>
                        </tr>
                        <tr>
                            <th class="show">作成日時</th>
                            <td><fmt:formatDate value="${task.created_at}" pattern="yyyy年MM月dd日 HH時mm分ss秒" /></td>
                        </tr>
                        <tr>
                            <th class="show">更新日時</th>
                            <td><fmt:formatDate value="${task.updated_at}" pattern="yyyy年MM月dd日 HH時mm分ss秒" /></td>
                        </tr>
                    </tbody>
                </table>
                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
                <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのタスクは見つかりませんでした</h2>
                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>