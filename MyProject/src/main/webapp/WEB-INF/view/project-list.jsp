<jsp:include page="header.jsp"></jsp:include>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<center>
<h1>Project List</h1>
	<table border="1" cellspacing="0">
	<tr>
		<th>Project Title</th>
		<th>Project File Name</th>
		<th>Project Description</th>
		<th>Project Tag</th>
	</tr>
	<c:forEach items="${projectList}" var="project">
	
	<tr>
		<td>${project.userProjectTitle }</td>
	
		<td>${project.userProjectFile }</td>
	
		<td>${project.userProjectDescription }</td>
	
		<td>${project.userProjectTag }</td>
		
		<td><c:url value="viewUserProject" var="View" >
				<c:param name="userProjectId" value="${project.userProjectId}"></c:param>
			</c:url>
				<a href="${View}">View</a>
		</td>
	</tr>
	</c:forEach>
	</table>
</center>
<jsp:include page="footer.jsp"></jsp:include>