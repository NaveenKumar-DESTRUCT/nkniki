<%@page import="org.hibernate.Session"%>
<%@page import="com.hibernate.DBcon.DBcon"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.*"%>
<%@page import="com.student.entity.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 
     
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            color: #404E67;
            background: #F5F7FA;
            font-family: 'Open Sans', sans-serif;
        }

        .table-wrapper {
            width: 700px;
            margin: 30px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
        }

        .table-title {
            padding-bottom: 10px;
            margin: 0 0 10px;
        }

        .table-title h2 {
            margin: 6px 0 0;
            font-size: 22px;
        }

        .table-title .add-new {
            float: right;
            height: 30px;
            font-weight: bold;
            font-size: 12px;
            text-shadow: none;
            min-width: 100px;
            border-radius: 50px;
            line-height: 13px;
        }

        .table-title .add-new i {
            margin-right: 4px;
        }

        table.table {
            table-layout: fixed;
        }

        table.table tr th,
        table.table tr td {
            border-color: #e9e9e9;
        }

        table.table th i {
            font-size: 13px;
            margin: 0 5px;
            cursor: pointer;
        }

        table.table th:last-child {
            width: 100px;
        }

        table.table td a {
            cursor: pointer;
            display: inline-block;
            margin: 0 5px;
            min-width: 24px;
        }

        table.table td a.add {
            color: #27C46B;
        }

        table.table td a.edit {
            color: #FFC107;
        }

        table.table td a.delete {
            color: #E34724;
        }

        table.table td i {
            font-size: 19px;
        }

        table.table td a.add i {
            font-size: 24px;
            margin-right: -1px;
            position: relative;
            top: 3px;
        }

        table.table .form-control {
            height: 32px;
            line-height: 32px;
            box-shadow: none;
            border-radius: 2px;
        }

        table.table .form-control.error {
            border-color: #f50000;
        }

        table.table td .add {
            display: none;
        }
    </style>
</head>

<body>
    
 <nav class="navbar navbar-expand-lg  navbar-dark bg-primary">
        <a class="navbar-brand" href="#"> </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                 <a class="nav-link active" href="view.jsp">Home <span class="sr-only">(current)</span></a>
                <a class="nav-link" href="u.jsp">update</a>
                <a class="nav-link" href="die.jsp">delete</a>
               <a class="nav-link disabled">Chairman login</a>
            </div>
        </div>
    </nav>


    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8">
                        <h2>Student <b>Details</b></h2>
                    </div>
                    <div class="col-sm-4">
                       <a href="index.jsp"> <button type="button" class="btn btn-info add-new" ><i class="fa fa-plus"></i> Add New</button></a>
                    </div>
                </div>
            </div>
           
            
    
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Student_id</th>
                        <th>Student_rollno</th>
                        <th>Student_name</th>
                        <th>Phone</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                <%SessionFactory sf=DBcon.buildSession();
       		 Session sess=sf.openSession();
    		 student_detai sd=new student_detai();
    		 List<student_detai> mulist = sess.createQuery(" from student_detai ").list();
    		 if(mulist!=null){
    			 for(student_detai c1:mulist){
    		
                %>
   
                    <tr>
                        <td><%= c1.getId() %></td>
                        <td><%=c1.getRollno() %> </td>
                        <td><%=c1.getName() %> </td>
                        <td><%=c1.getPhone() %></td>
                        <td>
                            <a class="add" title="Add" data-toggle="tooltip"  ><i class="material-icons">addnew</i></a>
                            <a class="edit" title="Edit" data-toggle="tooltip" href="u.jsp"><i class="material-icons">edit</i></a>
                            <a class="delete" title="Delete" data-toggle="tooltip" href="die.jsp"><i class="material-icons">delete</i></a>
                        </td>
                    </tr>
                    <%
           		 
    			 }
    		 }
    		 else{
    			 out.print("table details not fetched");
    		 }
    		 sess.close();
                    %>
                     
                </tbody>
            </table>
             
        </div>
    </div>

</body>


</html>