<%-- 
    Document   : index
    Created on : 28-Jul-2021, 1:16:45 PM
    Author     : chetan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <%@include file="./component/header.jsp" %>
        <title>Note Taker</title>
    </head>
    <body>
        <%@include file="./component/navbar.jsp" %>

        <div class="container-md">
            <div class="row">
                <div class="col-12 text-center mt-3 mb-3">
                    <h3>Note Taker</h3>
                </div>
            </div>
            <div class="card p-5">
                <div class="text-center">
                    <img class="img-fluid" style="max-width: 300px" src="./img/notes.png" />
                    <h3 class="text-primary text-center">Start Taking Your Notes</h3>
                    <a class="btn btn-primary" href="addNote.jsp">Create Notes</a>
                </div>
            </div>
        </div>
        
    </body>
</html>