<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<label for="content">タスク内容　※３５文字以内</label><br />
<input type="text" name="content" value="${task.content}" maxlength="35" style="width:600px; max-width:98%;"/>
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>