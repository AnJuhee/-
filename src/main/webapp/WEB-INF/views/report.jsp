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



    <script>
        // Ignore this in your implementation
        window.isMbscDemo = true;
    </script>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mobiscroll.javascript.min.css">
    <script src="${pageContext.request.contextPath}/resources/js/mobiscroll.javascript.min.js"></script>
    

</head>

<body id="wrapper">
	<!-- 사이드바 자리 -->
	<%@ include file="include/sidebar.jsp" %>
	<!-- 사이드바 자리 -->
	
	<!-- 페이지 전체부분 (topbar 포함) -->
	<div id="content-wrapper" class="d-flex flex-column">
	
	<!-- topbar 자리 -->
		<%@ include file="include/topbar.jsp" %>	
	<!-- topbar 자리 -->

    <div class="container">        
      <h1 class="">보고서 작성</h1>
    </div>


    <div class="container py-2" >
        <!-- 컨테이너 시작 건드리지마 -->	
        <form action="reportOk" method="post">
        <div class="card">
            <div class="card-body">
                <div class="card mb-2">
                    <div class="card-body row">
                        <label class="col-2 col-form-label">과제이름</label>
                        <label class="col col-form-label ">마라탕을 맛있게 만드는 방법</label>
                    </div>
                </div>
                <div class="card mb-2">
                    <div class="card-body row">
                        <label class="col-2 col-form-label">기간</label>
                        <label class="col col-form-label ">2022-02-02 ~ 2023-11-11</label>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body row">
                        <label class="col-2 col-form-label">책임자</label>
                        <label class="col col-form-label ">안주희</label>
                    </div>
                </div>
            </div>
        </div>
        
        <!--위에여백-->
    <div class="my-3"></div>
    <!--위에여백-->

    
        <div class="row mb-2">
        <div class="form-floating col">
             <input type="text" class="form-control" id="floatingInput" placeholder="제목" name="title">
             <label class="ml-2" for="floatingInput">제목</label>
        </div>
        </div>
        
   

        
            
        <div class="" >
            <textarea class="form-control" placeholder="내용입력" id="floatingTextarea" style="height: 400px;" name="contents"></textarea>            
        </div>
            	
            
        <div class=" my-3 ">
            <div class="row mb-2">
                <div class="form-floating col">
                    <input type="text" class="form-control" id="floatingInput_name" placeholder="기록자" name="writer">
                    <label class="ml-2" for="floatingInput_name">기록자</label>
                </div>

                <div class="form-floating col">
                    <input type="datetime" class="form-control" id="demo-mobile-picker-input" placeholder="기록일자" name="rdate">
                    <label class="ml-2" for="floatingInput_date">기록일자

                        

                    </label>
                </div>

                <div class="form-floating col">
                    <input type="text" class="form-control" id="floatingInput" placeholder="확인자" name="leadercheck">
                    <label class="ml-2" for="floatingInput">확인자</label>
                </div>
            </div>
        </div>

        

        <!--버튼-->
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <button class="btn btn-secondary me-md-2" type="submit">완료</button>
            <button class="btn btn-secondary" type="button" onclick="history.go(-1)">취소</button>
        </div>
        <!--버튼-->
         </form>   
            
                
            
            
         
        
        




        
        
        
        
        
        
        <!-- 컨테이너 끝 -->      
        </div>
   <!-- 페이지 끝 -->    
   </div>

    <!--아래여백-->
    <div class="my-5">
	</div>
    <!--아래여백-->

</div> 


    <script>
        
        mobiscroll.setOptions({
        locale: mobiscroll.localeEn,  
        theme: 'windows',             
        themeVariant: 'light'         
    });

    mobiscroll.datepicker('#demo-mobile-picker-input', {
        controls: ['calendar']        
    });
    
    var instance = mobiscroll.datepicker('#demo-mobile-picker-button', {
        controls: ['calendar'],       
        showOnClick: false,           
        showOnFocus: false,           
    });
    
    instance.setVal(new Date(), true);
    
    mobiscroll.datepicker('#demo-mobile-picker-mobiscroll', {
        controls: ['calendar']        
    });
    
    mobiscroll.datepicker('#demo-mobile-picker-inline', {
        controls: ['calendar'],       
        display: 'inline'             
    });
    
    document
        .getElementById('show-mobile-date-picker')
        .addEventListener('click', function () {
            instance.open();
            return false;
        });
    </script>



    

    
    
    
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