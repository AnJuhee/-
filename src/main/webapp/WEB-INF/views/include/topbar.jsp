<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


				<% 
				String sessionG = (String) session.getAttribute("rgroup");
				%>


				<!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

				<div class="sidebar-brand-text mx-3">
				<% if(sessionG == null) { %>
                연구실
                <%} else { %> 
                <%= sessionG %>
                <%} %></div>


                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i> 
                    </button>                    
                </nav>
                <!-- End of Topbar -->
                
                