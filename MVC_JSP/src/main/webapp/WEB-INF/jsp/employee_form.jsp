<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <% if (request.getAttribute("message") != null) { %>
            <div class="container mt-5">
                                 <h2>Update Employee</h2>
                                 <form action="/save/${id}" method="post">
                                     <div class="form-group">
                                         <label for="name">Name:</label>
                                         <input type="text" class="form-control" id="name" name="name" value="${name}" required>
                                     </div>
                                     <div class="form-group">
                                         <label for="age">Age:</label>
                                         <input type="number" class="form-control" id="age" name="age" value="${age}" required>
                                     </div>
                                     <div class="form-group">
                                         <label for="email">Email:</label>
                                         <input type="email" class="form-control" id="email" name="email" value="${email}" required>
                                     </div>
                                     <div class="form-group">
                                         <label for="phone">Phone:</label>
                                         <input type="tel" class="form-control" id="phone" name="phone" value="${phone}" required>
                                     </div>
                                     <div class="form-group">
                                         <label for="profession">Profession:</label>
                                         <input type="text" class="form-control" id="profession" name="profession" value="${profession}" required>
                                     </div>
                                     <button type="submit" class="btn btn-primary">Update</button>
                                 </form>
                             </div>
        <% } else { %>
             <div class="container mt-5">
                     <h2>Add Employee</h2>
                     <form action="/save" method="post">
                         <div class="form-group">
                             <label for="name">Name:</label>
                             <input type="text" class="form-control" id="name" name="name" required>
                         </div>
                         <div class="form-group">
                             <label for="age">Age:</label>
                             <input type="number" class="form-control" id="age" name="age" required>
                         </div>
                         <div class="form-group">
                             <label for="email">Email:</label>
                             <input type="email" class="form-control" id="email" name="email" required>
                         </div>
                         <div class="form-group">
                             <label for="phone">Phone:</label>
                             <input type="tel" class="form-control" id="phone" name="phone" required>
                         </div>
                         <div class="form-group">
                             <label for="profession">Profession:</label>
                             <input type="text" class="form-control" id="profession" name="profession" required>
                         </div>
                         <button type="submit" class="btn btn-primary">Submit</button>
                     </form>
                 </div>
        <% } %>


</body>
</html>
