<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.hibernate.DBcon.DBcon"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.student.entity.student_detai"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link active" href="view.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="u.jsp">update</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="die.jsp">delete</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled">Chairman login</a>
      </li>
    </ul>
  </div>
</nav>
    <section class="vh-100" style="background-color: #eee;">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-11">
                    <div class="card text-black" style="border-radius: 25px;">
                        <div class="card-body p-md-5">
                            <div class="row justify-content-center">
                                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">delete student detailes
                                    </p>

                                     
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example3c">Select Studentid </label><br>
              
                                                <select style=" width:250px;font-size: 20px;" name="delid">
                                                                                      
             <%SessionFactory sf=DBcon.buildSession();
       		 Session sess=sf.openSession();
    		 student_detai sd=new student_detai();
    		 List<student_detai> mulist = sess.createQuery(" from student_detai ").list();
    		 if(mulist!=null & mulist.size()>0){
    			 for(student_detai c1:mulist){
    		
                %>
                <option><%=c1.getId() %></option>
                <%
           		 
    			 }
    		 }
    		 else{
    			 out.print("table details not fetched");
    		 }
    		 sess.close();
                    %>
                                                </select>
                                        
                                            </div>
                                        </div>
                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div class="form-outline flex-fill mb-0">
                                                <label class="form-label" for="form3Example3c">Enter Student
                                                    rollnumber</label>
                                                <input type="email" id="form3Example3c" class="form-control"
                                                    name="rollno" />

                                            </div>
                                        </div>


                                        
                                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                            <input type="submit" class="btn btn-primary btn-lg" value="delete">
                                        </div>

                                    </form>

                                </div>
                                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                    <img src="	https://thumbs.dreamstime.com/b/graduate-student-a…-background-vector-illustration-web-220295777.jpg"
                                        class="img-fluid" alt="Sample image">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>

</html>