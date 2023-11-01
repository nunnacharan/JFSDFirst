<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<html> 
<head> 
 

<style> 
 
   .list-group-item {
      border: 2px double;
      background: transparent; /* Set the background of list items to transparent */
      color: aliceblue;
    }

    /* Animated background */
    body {
      background-image: url(/static/newyork.jpg);
      background-repeat: no-repeat;
      background-size: cover;
    }

    .navbar {
      background-color: #333;
      padding: 10px;
    }

    .back-button {
      background-color: #333;
      color: white;
      border: none;
    }
    
    back-button {
      background-color: #333;
      color: white;
      border: none;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      border: 2px double;
      padding: 8px;
      text-align: center;
      background-color: transparent;
      color: aliceblue;
    }

    th {
      background-color: #333;
    }
</style> 
</head> 
<body> 
 
<div class="navbar">
  <button class="back-button" onclick="goBack()">Back</button>
</div>


<h3 class="text-center text-light pt-3">Delete Employee</h3>

<div class="container p-4 text-light" >
<table class="table table-bordered table-striped table-hover table-responsive text-center">
  <thead class="bg-dark text-white">
    <tr>
      <th>ID</th>
      <th>NAME</th>
      <th>GENDER</th>
      <th>DATE OF BIRTH</th>
      <th>LOCATION</th>
      <th>EMAIL ID</th>
      <th>CONTACT NO</th>
      <th>STATUS</th>
      <th>ROLE</th>
      <th>Delete</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${empdata}" var="emp">
      <tr class="text-light">
        <td><c:out value="${emp.id}" /></td>
        <td><c:out value="${emp.name}" /></td>
        <td><c:out value="${emp.gender}" /></td>
        <td><c:out value="${emp.dateofbirth}" /></td>
        <td><c:out value="${emp.location}" /></td>
        <td><c:out value="${emp.email}" /></td>
        <td><c:out value="${emp.contact}" /></td>
        <td><c:out value="${emp.role }"/></td>
        <td><c:out value="${emp.active}" /></td>
        <td><a href="delete/<c:out value="${emp.id}" />" class="btn btn-danger">Delete</a></td>
      </tr>
    </c:forEach>
  </tbody>
</table>
</div>
 <script>
  function goBack() {
    window.history.back();
  }
</script>
</body> 
</html>