<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>







<!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#" onclick="script:window.location='dashboard'">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">GEUNHO <sup>2</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="#" onclick="script:window.location='dashboard'">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>대시보드</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                연구노트
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>연구노트</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">PROJECT</h6>
                        <a class="collapse-item" href="#" onclick="script:window.location='project_list'">프로젝트</a>
                        <a class="collapse-item" href="#" onclick="script:window.location='report_list'">보고서</a>
                    </div>
                </div>
            </li>
                        

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                PRODUCT
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>제품관리</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">안전관리</h6>
                        <a class="collapse-item" href="login.html">MSDS</a>
                        <a class="collapse-item" href="register.html">유해화학물질</a>
                        <a class="collapse-item" href="forgot-password.html">생물안전관리(LMO)</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">물품관리</h6>
                        <a class="collapse-item" href="404.html">물품목록</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <!--  
            <li class="nav-item">
                <a class="nav-link" href="charts.html">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Charts</span></a>
            </li>
			-->
			
            <!-- Nav Item - Tables -->
            <!--  
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>
			-->
			
            <!-- Divider -->
            <!--  
            <hr class="sidebar-divider d-none d-md-block">
			-->
			
            <!-- Sidebar Toggler (Sidebar) -->
            <!--  
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div> 
            -->

        </ul>
        <!-- End of Sidebar -->
        
        
        
