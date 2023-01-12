<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
            
            
            <%
			String sessionId = (String) session.getAttribute("rgroup");	
			%>

            <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            <div class="sidebar-brand-text mx-3">
            ${ldto.rgroup } &nbsp;&nbsp;&nbsp;연구실
            </div>


                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i> 
                    </button>                    
                
                <ul class="navbar-nav ml-auto">
                
                <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle mr-2" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bi bi-person-circle" style="font-size: 2rem; color: black;"></i> &nbsp;&nbsp;
                                
                                <span class="mr-2 d-none d-lg-inline text-gray-600 ">${ldto.name }</span>
                                
                                
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="Member?email=${ldto.email }">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    
                                    프로필
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    설정
                                </a>
                                
                                <%
								if(sessionId == null) {
								%>
	                                <a class="dropdown-item" href="join2?email=${ldto.email }">
	                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    연구실 추가
	                                </a>
                                <%
								} else {	
								%>
									<a class="dropdown-item" href="#">
	                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
	                                    연구실 멤버
	                                </a>
	                           <% 
								} 
								%>  
								

                                
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="logout">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    로그아웃
                                </a>
                            </div>
                        </li>
                        </ul>
                
                
                
                
                </nav>
                
                
                <!-- End of Topbar -->
                
                