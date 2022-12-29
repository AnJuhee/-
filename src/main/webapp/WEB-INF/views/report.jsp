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

    <title>보고서 작성</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >

</head>

<body>

    <!--위에여백-->
    <div class="my-5"></div>
    <!--위에여백-->


    
	<form action="reportwriter" method="post" name="reportWriter">

    <div class="container py-2" >
        <!-- 컨테이너 시작 건드리지마 -->	
        <div class="card">
            <div class="card-body">
        <div class="card mb-2">
            <div class="card-body">
              과제이름 : 마라탕 좋아요. 두부 많이주세요
            </div>
        </div>
        <div class="card mb-2">
            <div class="card-body">
              1993-04-30 -2022-12-28
            </div>
        </div>
        <div class="card">
            <div class="card-body">
              책임자 : 누구
            </div>
        </div>
        </div>
        </div>
        
        <!--위에여백-->
    <div class="my-3"></div>
    <!--위에여백-->

    <div class="card mb-2">
        <div class="card-body">
        제목 : 무게를 낮추는 방법
        </div>
    </div>

        <div class="" >
            <textarea class="form-control" placeholder="내용입력" id="floatingTextarea" style="height: 400px;"></textarea>            
        </div>
            
        <div class=" my-3 ">
            <div class="row mb-2">
                <div class="form-floating col">
                    <input type="text" class="form-control" id="floatingInput_name" placeholder="이름" value="">
                    <label class="ml-2" for="floatingInput_name">기록자</label>
                </div>

                <div class="form-floating col">
                    <input type="datetime" class="form-control" id="floatingInput_date" placeholder="이름">
                    <label class="ml-2" for="floatingInput_date">기록일자</label>
                </div>

                <div class="form-floating col">
                    <input type="email" class="form-control" id="floatingInput" placeholder="이름">
                    <label class="ml-2" for="floatingInput">서명</label>
                </div>
            </div>

            <div class="row">
                <div class="form-floating col">
                    <input type="text" class="form-control" id="floatingInput_name" placeholder="이름" value="">
                    <label for="floatingInput_name">확인자</label>
                </div>

                <div class="form-floating col">
                    <input type="datetime" class="form-control" id="floatingInput_date" placeholder="이름">
                    <label for="floatingInput_date">일자</label>
                </div>

                <div class="form-floating col">
                    <input type="email" class="form-control" id="floatingInput" placeholder="이름">
                    <label for="floatingInput">서명</label>
                </div>
            </div>
        </div>

        

        <!--버튼-->
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <button class="btn btn-primary me-md-2" type="submit">저장</button>
            <button class="btn btn-primary" type="button" onclick="history.go(-1)">취소</button>
        </div>
        <!--버튼-->
            
            
                
            
            
         
        
        




        
        
        
        
        
        
        <!-- 컨테이너 끝 -->      
        </div>

		</form>
    

    
    
    
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