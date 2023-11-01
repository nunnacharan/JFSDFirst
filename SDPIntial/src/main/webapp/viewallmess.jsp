<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<html> 
<head> 
 


<style> 
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

<h3 class="text-center text-light pt-3">View All Employees</h3>

<div class="container p-4 text-light" >
<table class="table table-bordered table-striped table-hover table-responsive text-center">
  <thead class="bg-dark text-white">
    <tr>
      <th>ID</th>
      <th>NAME</th>

      <th>EMAIL ID</th>
      <th>MESSAGES</th>

      <th>STATUS</th>
    </tr>
  </thead>
  <tbody class="text-light">
    <c:forEach items="${empmess}" var="cc">
      <tr class="text-light" >
        <td ><c:out value="${cc.id}" /></td>
        <td><c:out value="${cc.name}" /></td>
        <td><c:out value="${cc.email}" /></td>
        <td><c:out value="${cc.message}" /></td>
        <td><c:out value="${emp.active}" /></td>
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