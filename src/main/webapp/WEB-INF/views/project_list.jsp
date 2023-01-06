<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>프로젝트 리스트</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    
    
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
   
    <script>
        $( function() {
            $( ".datepicker" ).datepicker({
                dateFormat : 'yy-mm-dd',
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
              dayNamesMin: ['일','월','화','수','목','금','토'],
                autoSize: false,                  //오토리사이즈(body등 상위태그의 설정에 따른다)
                changeMonth: true,                  //월변경가능
                changeYear: true,                  //년변경가능
                showMonthAfterYear: true,
                yearRange: '2001:2050'            //년 뒤에 월 표시
            });
        } );
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
   
   <div class="container ">        
      <h1 class="">프로젝트</h1>
    </div>
   

    <div class="container border rounded py-2">
        <!-- 컨테이너 시작 건드리지마 -->   
        
        <div class="row">
        <div class="col" id="total">▷ 총 ${pCount }개의 게시물이 있습니다.</div>
        </div>  
         
           
        <div class="row ">
          <form action="projectSearch" class="col">
           
            <div id="total_search">
            
            <div id="search" >
               
                 <select id="search_select" name="searchOption">
                     <option value="title">과제명</option>
                     <option value="contents">책임자</option>
                     
                   </select>
                 
                 <div class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 " >
                 <div class="input-group">
                 <input type="text" class="form-control bg-light border-0 small" placeholder="검색"
                       aria-label="Search" aria-describedby="basic-addon2" name="searchKey">
                <div class="input-group-append">
                     <button class="btn btn-secondary" type="submit" >
                     <i class="fas fa-search fa-sm"></i>
                     </button>
               </div>
               </div>
           </div>
           </div>
            </div>
          </form>     
          
          <div class="col">
          <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <button class="btn btn-secondary mr-1" type="submit" data-bs-toggle="modal" data-bs-target="#Modal_add" >추가</button>
            <button class="btn btn-secondary mr-1" type="submit">설정</button>
          </div>
          </div>
          
         </div>
         
         
         <form id="" action="projectOK" >
        <!-- 모달 -->
          <div class="modal fade " id="Modal_add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static" >
            <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable "  >
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">프로젝트 등록</h5>                
                </div>
                <div class="modal-body">


                  <div class=" my-3 ">
                    <div class="row mb-2">
                        <div class="form-floating col">
                            <label class="ml-2" for="floatingInput_writer">과제이름</label>
                            <input type="text" class="form-control" id="floatingInput_writer" placeholder="이름" name="project">                          
                        </div>                   
                    </div>

                    <div class="row mb-2">


                        <div class="form-floating col">
                            <label class="ml-2" for="floatingInput_date">과제 시작 </label>
                            <input type="datetime" class="form-control datepicker" id="datepicker1" placeholder="" name="startdate">                         
                        </div>

                        <div class="form-floating col">
                          <label class="ml-2" for="floatingInput_date">과제 종료 </label>
                          <input type="datetime" class="form-control datepicker" id="datepicker2" placeholder="" name="finishdate">                          
                        </div>

                    </div>


                    <div class="row mb-2">
                        <div class="form-floating col">
                          <label class="ml-2" for="floatingInput_name">부서명</label>
                          <input type="text" class="form-control" id="floatingInput_name" placeholder="이름" name="team">                          
                        </div>    

                    </div>

                    <div class="row mb-2">
                        <div class="form-floating col">
                          <label class="ml-2" for="floatingInput_name">책임자</label>
                          <input type="text" class="form-control" id="floatingInput_name" placeholder="이름" name="leader">                          
                        </div>    

                    </div>

                    <div class="row mb-2">
                        <div class="form-floating col">
                          <label class="ml-2" for="floatingInput_name">연구원</label>
                          <input type="text" class="form-control" id="floatingInput_name" placeholder="이름" name="researcher">                          
                        </div>
                    </div>                  
                  </div>

                  <div class="" >
                      <textarea class="form-control" placeholder="관련 보고서" id="floatingTextarea" style="height: 400px;"></textarea>            
                  </div>


                </div><!--모달바디 끝-->

                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                  <button class="btn btn-primary" type="submit" >저장</button>
                </div>
              </div>
            </div>
          </div>
          <!--모달 끝-->
        </form>


         
         
         
         
      
      <div class="container border rounded my-3" >
      <table class="table table-hover">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">상태</th>
          <th scope="col">과제명</th>
          <th scope="col">책임자</th>
          <th scope="col">연구시작</th>
          <th scope="col">연구종료</th>
          <th scope="col">진행상황</th>
        </tr>
      </thead>
      <tbody>
      
          <c:forEach items="${pdto }" var="pdto">
          
           <tr class="" data-bs-toggle="collapse" href="#collapse${pdto.projectid }" role="button" 
            aria-expanded="false" aria-controls="${pdto.projectid }" >
             <th scope="row">${pdto.projectid }</th>
             <td>진행중</td>
             <td>${pdto.project }</td>
             <td>${pdto.leader }</td>
             <td>${pdto.startdate }</td>
             <td>${pdto.finishdate }</td>
             <td>
                <div class="row no-gutters align-items-center">
                   <div class="col">
                       <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">100%</div>
                   </div>
                   <div class="col">
                       <div class="progress progress-sm mr-2">
                           <div class="progress-bar bg-info" role="progressbar" style="width: 100%" aria-valuenow="50" aria-valuemin="0"
                               aria-valuemax="100">
                           </div>
                       </div>
                   </div>
               </div>
               </td>
           </tr>
           
           <tr>
        <td colspan="7" class="collapse" id="collapse${pdto.projectid }" >
          <div class="card card-body " role="button" onclick="script:window.location='report_list'" >
            <div class="">
            ---연구자는 김근호 안주희.<br>
            ---오늘은 던킨도너츠 먹고싶네요<br>
            ---집 가기전에 사들고 갑니다.<br>
            

            부서이름도 필요합니다
          </div>
          </div>
        </td>
        </tr>  
        </c:forEach>   
        
        
        
        
        
        
        
        
        
        
        
        
            
        
        
        
        
        </tbody>
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
    
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

    


</body>

</html>