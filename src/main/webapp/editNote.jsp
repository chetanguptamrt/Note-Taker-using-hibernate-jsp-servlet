<%-- 
    Document   : editNote
    Created on : 29-Jul-2021, 5:11:34 PM
    Author     : chetan
--%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
            
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <%@include file="./component/header.jsp" %>
        <title>Edit Note | Note Taker</title>
    </head>
    <body>
        <%@include file="./component/navbar.jsp" %>

        <div class="container-md">
            <%
                Note note = null;
                try{
                    int id = Integer.parseInt(request.getParameter("id").trim());
                    try (Session sess = FactoryProvider.getFactory().openSession()) {
                        note = sess.get(Note.class, id);
                        if(note!=null) {
            %>
            <div class="row">
                <div class="col-12 text-center mt-3 mb-3">
                    <h3>Edit Notes</h3>
                    <small id="status" style="display: none" ></small>
                </div>
            </div>
            
            <form id="editNote">
                <input name="id" value="<%= note.getId() %>" hidden />
                <label for="title">Title</label>
                <input class="form-control" type="text" id="title" name="title" value="<%= note.getTitle() %>" placeholder="Enter your title" maxlength="250" required />
                <label class="mt-3" for="content">Content</label>
                <textarea class="form-control" id="content" name="content" rows="12" placeholder="Enter your content" required ><%= note.getContent() %></textarea>
                <div class="text-center">
                    <button type="submit" class="btn btn-outline-success mt-3">Update Note</button>
                </div>
            </form>
            <%
                        } else {
            %>
            <div class="row">
                <div class="col-12 text-center text-danger m-5 p-5">
                    <h2>Sorry</h2>
                    <h3>Notes does not found.</h3>
                </div>
            </div>
            <%
                        }
                    }
                } catch(Exception e) {
            %>
            <div class="row">
                <div class="col-12 text-center text-danger m-5 p-5">
                    <h2>Sorry</h2>
                    <h3>Notes does not found.</h3>
                </div>
            </div>
            <%
                }
            %>
            
        </div>
        <script src="js/editNote.js" type="text/javascript"></script>
    </body>
</html>
    