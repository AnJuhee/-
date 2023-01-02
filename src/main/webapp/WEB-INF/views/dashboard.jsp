<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>데시보드</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

  

    <!--드래그앤드롭-->
    <script>
        function allowDrop(ev) {
          ev.preventDefault();
        }
        
        function drag(ev) {
          ev.dataTransfer.setData("text", ev.target.id);
        }
        
        function drop(ev) {
          ev.preventDefault();
          var data = ev.dataTransfer.getData("text");
            console.log(ev.target)
          if($(ev.target).hasClass('col')) {
            ev.target.appendChild(document.getElementById(data));
          }
          
        }
        </script>


</head>

<body>

<div id="wrapper">

	<!-- 사이드바 자리 -->
	<%@ include file="include/sidebar.jsp" %>
	<!-- 사이드바 자리 -->
	
	<!-- 페이지 전체부분 (topbar 포함) -->
	<div id="content-wrapper" class="d-flex flex-column">
	
	<!-- topbar 자리 -->
		<%@ include file="include/topbar.jsp" %>	
	<!-- topbar 자리 -->

   

    <div class=" container border rounded py-2 " ondrop="drop(event)" ondragover="allowDrop(event)">
        <!-- 컨테이너 시작 건드리지마 -->	
        
        
        <div class="row">

        <!-- 왼쪽에 위치하게 -->
        <div class="col">

            <!--프로젝트 카드 시작-->
            <div class="col" draggable="true" ondragstart="drag(event)" id="drag1">                
                <div class="card shadow mb-4 ">
                       <!-- 카드헤더 드롭다운 -->
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between" >
                        
                        <h6 class="m-0 font-weight-bold text-secondary">
                        <a href="#" onclick="script:window.location='project_list'">프로젝트 목록</a></h6>
                        
                        
                        <div class="dropdown no-arrow">
                        <a class="dropdown-toggle" href="#" onclick="script:window.location='project_list'" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                        <div class="dropdown-header">Dropdown Header:</div>
                        <a class="dropdown-item" href="#">Action</a>                       
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                        </div>
                    </div>
                    <!--카드헤더 끝-->
                    
                   <!-- 카드바디 -->
                   <div class="card-body">

                        <!--과제--> 
                        <div class="card border my-2" role="button" data-bs-toggle="collapse" href="#project_content" aria-expanded="false" aria-controls="project_content" id="">
                        <p class="ml-2">과제이름 어쩌고 냠냠냠</p>
                        </div>
                        <!--과제-->

                        <!--과제 내용-->                   
                        <div class="collapse" id="project_content">
                          <div class="card card-body ">
                            Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.
                          </div>
                        </div>
                        <!--과제 내용 끝-->
                       
                       <div class="card border my-2" role="button" data-bs-toggle="collapse" href="#project_content1" aria-expanded="false" aria-controls="project_content1" id="">
                           다음 점심 메뉴는 서브웨이입니다.
                       </div>
                           
                       <div class="collapse" id="project_content1">
                          <div class="card card-body ">
                            사브레 누가 훔쳐먹었니<br>
                            유통기한 5462년 26542월 265422일 265422시 22분<br>
                            찾아주세요<br>
                            토레다먹고싶엉<br>
                          </div>
                        </div>                       
                       
                       <div class="card border my-2" id="">
                       asfasfsafasfasfasf
                       </div>
                       
                   </div>         
                   <!-- 카드바디 끝 -->	
                
                   </div>
            </div>
            <!--프로젝트 카드 끝-->
                
           
            
            <!--최근 프로젝트 카드-->
            <div class="col" draggable="true" ondragstart="drag(event)" id="drag2">
                <div class="card shadow mb-4 ">
                    <!-- 카드헤더 드롭다운 -->
                    <div
                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">최근 프로젝트</h6>
                        <div class="dropdown no-arrow">
                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                aria-labelledby="dropdownMenuLink">
                                <div class="dropdown-header">Dropdown Header:</div>
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>
                    </div>

                    <!-- 카드 바디 -->
                    <div class="card-body">                        
                        <!--최근프로젝트 과제이름 시작-->
                        <div class="card mb-2 bold">
                                <h5 class=" font-weight-bold">과제명 
                                    <span class="float-right">D-365</span>
                                </h5>                     
                        </div> 
                        <!--최근프로젝트 과제이름 끝-->

                        <!--최근프로젝트 과제 내용 시작-->
                        <div class="card font-weight-bold mb-2 bold">
                             Server ㅇㄴㄹㄴㅇㄹ Migrationg fasdgasdgas
                             difugsadhgashgdfaghsdfjghs
                             adjfasd
                             sdafsadfsad
                             fasdfasdfasdfasdfasdf
                             asdfasdf 
                        </div>
                        <!--최근프로젝트 과제 내용 끝-->
                         
                        <!--최근프로젝트 진행 바-->                                            
                        <div class=" progress mb-2"> 
                            <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                            </div>  
                        </div>
                       
                        
                        <div class="card bold">
                         <li>책임자
                         </li>
                         <li>연구원
                         </li>
                         </div>
                       
                        
                        
                    </div>
                    <!--카드바디끝-->
                </div>                         
                
            </div>
            <!--최근 프로젝트 카드-->

        </div>

        <!-- 오른쪽에 위치하게-->
        <div class="col">
            <!--재고관리 카드 시작-->
            <div class="col" draggable="true" ondragstart="drag(event)" id="drag3">
                <div class="card shadow mb-4 ">
                    <!-- Card Header - Dropdown -->
                    <div
                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">재고관리</h6>
                        <div class="dropdown no-arrow">
                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                aria-labelledby="dropdownMenuLink">
                                <div class="dropdown-header">Dropdown Header:</div>
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Card Body -->
                    <div class="card-body">
                            <div>
                            유효기간
                            </div>
                        <div class="chart-pie pt-4 pb-2">
                            <canvas id="myPieChart"></canvas>
                        </div>
                        <div class="mt-4 text-center small">
                            <span class="mr-2">
                                <i class="fas fa-circle text-primary"></i> 화학약품
                            </span>
                            <span class="mr-2">
                                <i class="fas fa-circle text-success"></i> 생물
                            </span>
                            <span class="mr-2">
                                <i class="fas fa-circle text-info"></i> 
                            </span>
                        </div>
                    </div>
                </div>
            </div>
             <!--재고관리 카드 끝-->
            
         
        </div>
        

    </div>

        
        
        
        
        
        
        
        <!-- 컨테이너 끝 -->      
        </div>
   <!-- 페이지 끝 -->    
   </div>

    <!--아래여백-->
    <div class="my-5">
	</div>
    <!--아래여백-->

</div>       


    

    
    
    
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/demo/chart-pie-demo.js"></script>

    

</body>

</html>