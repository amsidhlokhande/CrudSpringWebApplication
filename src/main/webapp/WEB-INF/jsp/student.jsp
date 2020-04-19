<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Student Management</title>
	</head>

	<body>
		<div>
			<h1>
				Student Data
			</h1>
			<form:form action="student.do" method="POST" commandName="student">
				<table>
					<tr>
						<td>
							Studnet ID
						</td>
						<td>
							<form:input path="studentId" />
						</td>
					</tr>
					<tr>
						<td>
							First Name
						</td>
						<td>
							<form:input path="firstname" />
						</td>
					</tr>
					<tr>
						<td>
							Last Name
						</td>
						<td>
							<form:input path="lastname" />
						</td>
					</tr>
					<tr>
						<td>
							Year Level
						</td>
						<td>s
							<form:input path="yearLevel" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" name="action" value="Add" />
							<input type="submit" name="action" value="Edit" />
							<input type="submit" name="action" value="Delete" />
							<input type="submit" name="action" value="Search" />
						</td>
					</tr>
				</table>
			</form:form>
		</div>
		<br>
		<hr color="red">
    <div>
       <table border="1">
          <tr>
              <th>Student ID</th>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Year Level</th>
          </tr>
          <c:forEach items="${studentList}" var="student">
              <tr>
                 <td>${student.studentId }</td>
                 <td>${student.firstname }</td>
                 <td>${student.lastname}</td>
                 <td>${student.yearLevel}</td>
              </tr>
          </c:forEach>
          
       </table>
    </div>
	</body>
</html>
