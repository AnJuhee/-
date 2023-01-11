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
      <h1 class="">물품 수정</h1>
    </div>


    <div class="container py-2" >
        <!-- 컨테이너 시작 건드리지마 -->	
        
        
        
        <form action="inventoryModifyOk">
        <input type="hidden" value="${idto.inum }" name="inum">

          
   
              
                <div class="my-3">
                      <div>
              
                          <div class="card-body row">
              
                              <div class="card-body">
                                  <div class="mb-3">
                                      <label for="hamful_add_name1" class="form-label">이름</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_name1" placeholder="이름을 입력해주세요" name="iname" value="${idto.iname }">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_category1" class="form-label">카테고리</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_category1" placeholder="카테고리를 입력해주세요" name="category" value="${idto.category }">
                                  </div>
              
                                  <div class="mb-3">
                                      <label for="hamful_add_brand1" class="form-label">브랜드</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_brand1" placeholder="브랜드를 입력해주세요" name="brand" value="${idto.brand }">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_productnumber1" class="form-label">제품번호</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_productnumber1" placeholder="제품번호를 입력해주세요" name="pronum" value="${idto.pronum }">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_managenumber1" class="form-label">관리번호</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_managenumber1" placeholder="관리번호를 입력해주세요" name="mananum" value="${idto.mananum }">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_casno1" class="form-label">CAS no</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_casno1" placeholder="CAS no를 입력해주세요" name="casNo" value="${idto.casNo }">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_volume1" class="form-label">용량</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_volume1" placeholder="용량을 입력해주세요" name="volume" value="${idto.volume }">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_mol1" class="form-label">분자량</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_mol1" placeholder="분자량을 입력해주세요" name="molecular" value="${idto.stock }">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_enddate1" class="form-label">유효기간</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_enddate1" placeholder="유효기간을 입력해주세요" name="exdate" value="${idto.exdate}">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_location1" class="form-label">보관위치</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_location1" placeholder="보관위치를 입력해주세요" name="location" value="${idto.location }">
                                  </div>  
                                  <div class="mb-3">
                                      <label for="hamful_add_quantity1" class="form-label">등록할 수량</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_quantity1" placeholder="수량을 입력해주세요" name="stock" value="${idto.stock }">
                                  </div>
                              </div>
                          </div>
                      </div>
  
                  </div>
                  
                  <div class="my-3"></div>
                  
                  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <button class="btn btn-secondary me-md-2" type="submit">수정완료</button>
                    <button class="btn btn-secondary me-md-2" type="button" onclick="script:window.location='inventoryDelete?inum=${idto.inum}'">삭제</button>
            		<button class="btn btn-secondary me-md-2" type="button" onclick="history.go(-1)">취소</button></div>
              	  </div>
        </form>
        <!--버튼-->
            
            
            
                
            
            
         
        
        




        
        
        
        
        
        
        <!-- 컨테이너 끝 -->      
        </div>
   <!-- 페이지 끝 -->    
   </div>

    <!--아래여백-->
    <div class="my-5">
	</div>
    <!--아래여백-->

</div> 


    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script> 
        <script>
        $(function(){
            $("tr[id^='projectid']").each(function(i,e){
            
              var sdate = $(e).find('.startdate').html();
              var edate = $(e).find('.enddate').html();
              var diff = diffDay(sdate, edate);
              $(e).find(".dday").html(diff.dday);
              $(e).find(".progress-bar").html(diff.res_progress+"%").animate({"width": diff.res_progress +"%"}, {duration : 100, easing : "linear"});
              
            });
        });
        

        function diffDay(startdate, enddate) { //컬럼이름 자리
          var sdate =  startdate.split("-"); //yyyy-mm-dd 리스트로 만들기 .split("-")
          var edate =  enddate.split("-");
          var today = new Date().toJSON().substr(0,10).split("-");

          var _sdate = new Date(sdate[0],sdate[1],sdate[2]).getTime(); // timestamp  만들기
          var _edate = new Date(edate[0],edate[1],edate[2]).getTime(); //종료날짜
          var _today = new Date(today[0],today[1],today[2]).getTime(); //오늘날짜
          
          var gap = _edate - _sdate; //종료일-시작일
          var progress_gap = _edate - _today; //종료일-오늘

          var day = Math.ceil(gap / (1000 * 60 * 60 * 24)); // 총 연구기간 며칠인지 계산
          var progress_day = Math.ceil(progress_gap / (1000 * 60 * 60 * 24)); // 오늘부터 남은기간 계산
          // progress_day1 = day - progress_day; 


          var progress_per,res_progress = 100;
          
          var tmp_date = (progress_day*-1);
          var _dday = "D"+(tmp_date*1); 
          // var _dday = "D"+(progress_day*-1); //디데이 나오게하는 자리          
        
          if(tmp_date > 0) {
            _dday = "D+"+(progress_day*-1);
          } else if(tmp_date < 0) {                        
            res_progress = Math.floor(((day-progress_day) / day) * 100); // 버림  ,  Math.ceil 올림  , Math.round 반올림
          }
          else  {
            _dday = "D-day";
          }

          var obj = {"dday" : _dday, "res_progress" : res_progress};
          
          return obj;
          // 연구 시작 ~ 끝 전체 일자 _dday
          // $(ele).html("전체 "+day+"일 중 "+progress_day+"일이 지났습니다. ("+res_progress+"% 진행 중)");
          
        }
          
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