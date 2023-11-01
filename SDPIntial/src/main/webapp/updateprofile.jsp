<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>



<style>

</style>
</head>
<body>

<%@ include file="empnavbar.jsp" %>

<br>

<span class="blink">
<h3 align=center style="color:red">${message}</h3>
</span>

<p style="text-align: right;font-size: 15pt">Hi ${ename}</p> <br>

<form method="post" action="update" class="container text-light">
  <div class="row">
    <div class="col-md-6">
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" name="name" required="required" value="${emp.name}">
      </div>
      
      <div class="form-group">
        <label for="gender">Gender</label>
        <input type="text" class="form-control" id="gender" name="gender" value="${emp.gender}" readonly>
      </div>
      
      <div class="form-group">
        <label for="dob">Date of Birth</label>
        <input type="date" class="form-control" id="dob" name="dob" required="required" value="${emp.dateofbirth}">
      </div>
      
     <div class="form-group">
                          <label for="role">Role</label>
                          <select class="form-control" id="dept" name="dept" required>
                            <option value="">---Select---</option>
                            <option value="TOURIST">Tourist</option>
                            <option value="BUSINESS MAN">Business Man</option>
                            <option value="STUDENT">Student</option>
                            <option value="OTHERS">Others</option>
                          </select>
                        </div>
    </div>
    
    <div class="col-md-6">
      
      
      <div class="form-group">
        <label for="email">Email ID</label>
        <input type="email" class="form-control" id="email" name="email" required value="${emp.email}" readonly>
      </div>
      
      <div class="form-group">
        <label for="pwd">Password</label>
        <input type="password" class="form-control" id="pwd" name="pwd" required value="${emp.password}">
      </div>
      
      <div class="form-group">
        <label for="location">Location</label>
        <input type="text" class="form-control" id="location" name="location" required value="${emp.location}">
      </div>
      
      <div class="form-group">
        <label for="contact">Contact No</label>
        <input type="text" class="form-control" id="contact" name="contact" required value="${emp.contact}">
      </div>
    </div>
  </div>
  
  <div class="row">
    <div class="col-md-12 text-center p-5">
      <input type="submit" value="Update" class="btn btn-primary">
    </div>
  </div>
</form>

</body>
</html>