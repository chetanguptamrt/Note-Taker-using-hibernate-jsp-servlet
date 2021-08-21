<%-- 
    Document   : addNote
    Created on : 28-Jul-2021, 5:28:31 PM
    Author     : chetan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <%@include file="./component/header.jsp" %>
        <title>Add Note | Note Taker</title>
    </head>
    <body>
        <%@include file="./component/navbar.jsp" %>

        <div class="container-md">
            
            <div class="row">
                <div class="col-12 text-center mt-3 mb-3">
                    <h3>Add Notes</h3>
                    <small id="status" style="display: none" ></small>
                </div>
            </div>
            
            <form id="addNote">
                <label for="title">Title</label>
                <input class="form-control" type="text" id="title" name="title" placeholder="Enter your title" maxlength="250" required />
                <label class="mt-3" for="content">Content</label>
                <textarea class="form-control" id="content" name="content" rows="12" placeholder="Enter your content" required ></textarea>
                <div class="text-center">
                    <button type="submit" class="btn btn-outline-success mt-3">Add Note</button>
                </div>
            </form>
        </div>
        
        <script src="js/addNote.js" type="text/javascript"></script>
    </body>
</html>