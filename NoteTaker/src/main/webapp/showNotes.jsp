<%-- 
    Document   : showNotes
    Created on : 29-Jul-2021, 2:50:47 PM
    Author     : chetan
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%
    Session s = FactoryProvider.getFactory().openSession();
    Query q = s.createQuery("from Note");
    List<Note> list = q.list();
    s.close();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <%@include file="./component/header.jsp" %>
        <title>Show Notes | Note Taker</title>
    </head>
    <body>
        <%@include file="./component/navbar.jsp" %>

        <div class="container-md">
            <div class="row">
                <div class="col-12 text-center mt-3 mb-3">
                    <h3>Show Notes</h3>
                </div>
            </div>
            
            <%
                for(Note note : list) {
            %>
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title"><%= note.getTitle() %></h5>                      
                    <pre class="pre-card-notes"><%= note.getContent() %></pre>
                    <% SimpleDateFormat sdm = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss"); %>
                    <label><b class="text-primary"><%= sdm.format(note.getAddedDate()) %></b></label>
                    <div class="text-center">
                        <a class="btn btn-primary mr-3" href="./editNote.jsp?id=<%= note.getId() %>">Edit</a>
                        <a class="btn btn-danger mr-3" href="./DeleteNotesServlet?id=<%= note.getId() %>">Delete</a>
                    </div>
                </div>
            </div>
            <%
                }
            %>
            
        </div>
        
    </body>
</html>
