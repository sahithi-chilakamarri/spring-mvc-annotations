
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
		 button. Handle errors like empty fields -->
		 <form action="saveNote">
		 Note ID:<input type="text" name="noteId" required/><br>
		 Note Title:<input type="text" name="noteTitle" required/><br>
		 Note Content:<input type="text" name="noteContent" required/><br>
		 Note Status:<input type="text" name="noteStatus" required/><br>
		 <input type="submit" value="send" required/>
		 <form>
	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
<table border="2" width="70%" cellpadding="2">
<tr>
<th>Note ID</th>
<th>Note Title</th>
<th>Note Content</th>
<th>Note Status</th>
<th>Created Date</th>
</tr>
   <c:forEach var="note" items="${notes}" varstatus="status">
   <tr>
   <td>${note.noteId}</td>
   <td>${note.noteTitle}</td>
   <td>${note.noteContent}</td>
   <td>${note.noteStatus}</td>
   <td>${note.createdAt}</td>
   </c:forEach>
   </tr>
</table>
</body>
</html>