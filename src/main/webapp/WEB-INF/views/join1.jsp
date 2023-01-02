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

    <title>join1</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>

    <!--위에여백-->
    <div class="my-5">
	</div>
    <!--위에여백-->

    <div class="container border rounded  py-2" style="width: 40rem; ">
        <!-- 컨테이너 시작 건드리지마 -->	
        
            
        <form action="joinOk1" method="post">
            <!--  <img class="mb-4" src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> -->
              <div>
              <h1 class="h3 my-5 mb-3 fw-normal text-center">회원가입</h1>
              </div>
     
              <div class="form-floating my-3">
                <input type="email" class="form-control" id="floatingInput" placeholder="이메일(계정)" name="email">      
              </div>   
              
              <div class="form-floating my-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="이름" name="name">      
              </div>      
              
              <div class="form-floating my-3">
                <input type="password" class="form-control" id="floatingPassword" placeholder="비밀번호(8자리 이상)" name="pw">      
              </div>
              
              <div class="form-floating my-3">
                <input type="password" class="form-control" id="floatingPassword" placeholder="비밀번호 확인">      
              </div>
              
              
              
              <div class="my-4">
              <button class="w-100 btn btn-lg btn-success" type="submit" onclick="script:window.location='dashboard'">가입 완료</button>
              <br>
                 </div>
             
            </form>
            
            
                
            
            
         
        
        
        
        
        
        
        
        <!-- 컨테이너 끝 -->      
        </div>


    

    
    
    
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>