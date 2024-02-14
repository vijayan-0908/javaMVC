<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Table</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    ${message-success}
     <% if (request.getAttribute("message_success") != null) { %>
          <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>${message_success}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
     <%}%>
     <% if (request.getAttribute("message-failed") != null) { %>
               <div class="alert alert-success alert-dismissible fade show" role="alert">
                 <strong>${message-failed}</strong>
                 <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                   <span aria-hidden="true">&times;</span>
                 </button>
               </div>
     <%}%>

   <div class="container mt-5">
           <h2>Employee Table</h2>
           <div class="mb-3">
                   <a href="/new" class="btn btn-primary">Add Employee</a>
           </div>
           <table class="table table-striped">
               <thead>
                   <tr>
                       <th>Id</th>
                       <th>Name</th>
                       <th>Age</th>
                       <th>Email</th>
                       <th>Phone</th>
                       <th>Profession</th>
                       <th>Update</th>
                       <th>Delete</th>
                   </tr>
               </thead>
               <tbody>
                   <c:forEach var="employee" items="${employees}"  varStatus="loop">
                       <tr>
                           <td>${loop.index + 1}</td>
                           <td>${employee.name}</td>
                           <td>${employee.age}</td>
                           <td>${employee.email}</td>
                           <td>${employee.phone}</td>
                           <td>${employee.profession}</td>
                           <td>
                             <a href = "/update/${employee.id}" class="btn btn-success">Update</a>
                           </td>
                           <td>
                             <a href = "/delete/${employee.id}" class="btn btn-danger">Delete</a>
                           </td>
                       </tr>
                   </c:forEach>
               </tbody>
           </table>
       </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


