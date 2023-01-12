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
      <h1 class="">물품목록</h1>
    </div>
   

    <div class="container border rounded py-2">
        <!-- 컨테이너 시작 건드리지마 -->   
        
        

       <div class="row"></div>
        
        <div class="row ">
          <form action="inventorySearch" class="col">
           
            <div id="inven_total_search">
            
            <div id="inven_search" >
               
                 <select id="search_select" name="searchOption">
                     <option value="iname">제품명</option>
                     <option value="category">카테고리</option>
                     <option value="brand">브랜드</option>
                     <option value="casNo">카스번호</option>
                     <option value="pronum">제품번호</option>
                     <option value="mananum">관리번호</option>
                     <option value="location">보관위치</option>
                     
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
            <button class="btn btn-secondary mr-1" data-bs-toggle="modal"  onclick="openModal()">추가</button>
            <button class="btn btn-secondary mr-1" type="submit">설정</button>
          </div>
          </div>
          
         </div>
         
         
         
         <!-- 모달 -->
         <form action="inventoryOk">
          <div class="modal fade " id="Modal_add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static" >
              <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable "  >
              <div class="modal-content">
                  <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">유해물질 등록</h5>                
                  </div>
                  <div class="modal-body">
                  
                      
              
                      <div class="card">
              
                          <div class="card-body row">
              
                              <div class="card-body">
                              
                                  <div class="mb-3">
                                     <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-n3">
                                        <button type="button" class="btn btn-primary" data-bs-target="#modal_search" data-bs-toggle="modal" data-bs-dismiss="modal">검색</button>
                                     </div>
                                      <label for="hamful_add_name1" class="form-label"> * 이름</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_name1" placeholder="이름을 입력해주세요" name="iname">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_category1" class="form-label">카테고리</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_category1" placeholder="카테고리를 입력해주세요" name="category">
                                  </div>
              
                                  <div class="mb-3">
                                      <label for="hamful_add_brand1" class="form-label">브랜드</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_brand1" placeholder="브랜드를 입력해주세요" name="brand">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_productnumber1" class="form-label">제품번호</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_productnumber1" placeholder="제품번호를 입력해주세요" name="pronum">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_managenumber1" class="form-label">관리번호</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_managenumber1" placeholder="관리번호를 입력해주세요" name="mananum">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_casno1" class="form-label"> * CAS no</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_casno1" placeholder="CAS no를 입력해주세요" name="casNo">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_volume1" class="form-label">용량</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_volume1" placeholder="용량을 입력해주세요" name="volume">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_mol1" class="form-label">분자량</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_mol1" placeholder="분자량을 입력해주세요" name="molecular">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_enddate1" class="form-label"> * 유효기간</label>
                                      <input type="datetime" class="form-control datepicker" id="datepicker2" placeholder="유효기간을 입력해주세요" name="exdate">
                                  </div>
                                  <div class="mb-3">
                                      <label for="hamful_add_location1" class="form-label">보관위치</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_location1" placeholder="보관위치를 입력해주세요" name="location">
                                  </div>  
                                  <div class="mb-3">
                                      <label for="hamful_add_quantity1" class="form-label">등록할 수량</label>
                                      <input type="text" class="form-control inputs" id="hamful_add_quantity1" placeholder="수량을 입력해주세요" name="stock">
                                  </div>
                              </div>
                              <!--
                              <div class="card-body">
              
                              </div>
                              -->
                          </div>
                      </div>
  
                  </div>
                  <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                  <button type="button" class="btn btn-primary" data-bs-target="#modal_check" data-bs-toggle="modal" data-bs-dismiss="modal">저장</button>
                  </div>
              </div>
              </div>
          </div>
          
  
          <!--저장확인 모달-->
          
          <div class="modal fade" id="modal_check" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1" data-bs-backdrop="static">
              <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable ">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel2">등록확인</h5>                  
                  </div>
                  <div class="modal-body">
                    
                    <div class="card">
              
                      <div class="card-body row">
          
                          <div class="card-body">
                              <div class="mb-3 row border">
                                  <div class="col-sm-3 ">이름</div>                                  
                                  <div id="hamful_add_name2"></div>                                  
                              </div>
                              <div class="mb-3 row border">
                                <div class="col-sm-3 ">카테고리</div>
                                <div id="hamful_add_category2" ></div>                                
                              </div>
                              <div class="mb-3 row border">
                                <div for="hamful_add_brand2" class="col-sm-3 ">브랜드</div>
                                <div id="hamful_add_brand2" ></div>                                
                              </div>
                              <div class="mb-3 row border">
                                <div for="hamful_add_productnumber2" class="col-sm-3 ">제품번호</div>
                                <div id="hamful_add_productnumber2" ></div>                                
                              </div>
                              <div class="mb-3 row border">
                                <div for="hamful_add_managenumber2" class="col-sm-3 ">관리번호</div>
                                <div id="hamful_add_managenumber2" ></div>                                
                              </div>
                              <div class="mb-3 row border">
                                <div for="hamful_add_casno2" class="col-sm-3 " >CAS no</div>
                                <div id="hamful_add_casno2"  id="text"></div>                                
                              </div>                              
                              <div class="mb-3 row border">
                                <div for="hamful_add_volume2" class="col-sm-3 ">용량</div>
                                <div id="hamful_add_volume2" ></div>                                
                              </div>
                              <div class="mb-3 row border">
                                <div for="hamful_add_mol2" class="col-sm-3 ">분자량</div>
                                <div id="hamful_add_mol2" ></div>                                
                              </div>
                              <div class="mb-3 row border">
                                <div for="hamful_add_enddate2" class="col-sm-3 ">유효기간</div>
                                <div id="hamful_add_enddate2" ></div>                                
                              </div>
                              <div class="mb-3 row border">
                                <div for="hamful_add_location2" class="col-sm-3 ">보관위치</div>
                                <div id="hamful_add_location2" ></div>                                
                              </div>
                              <div class="mb-3 row border">
                                <div for="hamful_add_quantity2" class="col-sm-3 ">등록할 수량</div>
                                <div id="hamful_add_quantity2" ></div>                                
                              </div>
                              
                          </div>
                          
                      </div>
                  </div>
  
                    
                  </div>
                  <div class="modal-footer">
                    <button class="btn btn-primary" data-bs-target="#Modal_add" data-bs-toggle="modal" data-bs-dismiss="modal" type="button">이전</button>
                    <button class="btn btn-primary" data-bs-target="#ModalToggle" data-bs-toggle="modal" data-bs-dismiss="modal" type="submit">저장</button>
                  </div>
                  
                </div>
              </div>
            </div>
            </form>
            <!--저장확인 모달-->
            
  
            <!--검색하기 모달-->
            <div class="modal fade " id="modal_search" aria-hidden="true" aria-labelledby="exampleModalToggleLabel3" tabindex="-1" data-bs-backdrop="static">
              <div class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel3">등록확인</h5>                  
                  </div>
                  <div class="modal-body">
                  
                  <form action="apiSearch" class="col">
           
            <div id="api_total_search">
            
            <div id="api_search" >
               
                 <select id="search_select" name="searchOption">
                     <option value="name_kor">이름</option>
                     <option value="name_eng">이름(영문)</option>
                     <option value="category">카테고리</option>
                     <option value="casNo">카스번호</option>
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
          
         <div class="container-fluid border rounded my-3" >
         <table class="table table-hover">
         <thead>
           <tr>
             <th scope="col">제품 영문명</th>
             <th scope="col">제품 국문명</th>
             <th scope="col">카테고리</th>
             <th scope="col">cas no.</th>        
           </tr>
         </thead>
         <tbody>
            <c:forEach items="${adto }" var="adto">
              <tr class="" data-bs-toggle="modal" href="#Modal_add${adto.casNo}" role="button" 
                  aria-expanded="false" >
                <td>${adto.name_eng}</td>
                <td>${adto.name_kor}</td>
                <td>${adto.factor}</td>
                <td>${adto.casNo}</td>
              </tr>
           </c:forEach>  
           </tbody>
           </table>
         </div>
                  
             
                  
                  </div>
                  <div class="modal-footer">
                    <button class="btn btn-primary" data-bs-target="#Modal_add" data-bs-toggle="modal" data-bs-dismiss="modal">이전</button>
                    <button class="btn btn-primary" data-bs-target="#ModalToggle" data-bs-toggle="modal" data-bs-dismiss="modal">저장</button>
                  </div>
                  
                </div>
              </div>
            </div>
            <!--검색하기 모달-->
  
          <!-- 모달 -->
         
         
         
         
          
        </div>
      
      <div class="container-fluid border rounded my-3" >
      <table class="table table-hover">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">이름</th>
          <th scope="col">카테고리</th>
          <th scope="col">브랜드</th>
          <th scope="col">제품번호</th>
          <th scope="col" >관리번호</th>
          <th scope="col">용량</th>
          <th scope="col">유효기간</th>
          <th scope="col">보관위치</th>
          <th scope="col">수량</th>
          <th scope="col">cas no.</th>          
        </tr>
      </thead>
      <tbody>
         <c:forEach items="${idto }" var="idto">
        
           <tr class="" data-bs-toggle="collapse" href="#collapse${idto.inum}" role="button" 
               aria-expanded="false" aria-controls="${idto.inum}" >
             <th scope="row">${idto.inum }</th>
             <td>${idto.iname}</td>
             <td>${idto.category}</td>
             <td>${idto.brand}</td>
             <td>${idto.pronum}</td>
             <td>${idto.mananum}</td>
             <td>${idto.volume}</td>
             <td>${idto.exdate}</td>
             <td>${idto.location}</td>
             <td>${idto.stock}</td>
             <td>${idto.casNo}</td>
             
            </tr>
           
           <tr>
           <td colspan="11" class="collapse" id="collapse${idto.inum}" >
             <div class="card card-body " role="button">
               <a href="inventoryModify?inum=${idto.inum }" style="text-decoration :none;" >
               <div>
               ---관리번호 : ${idto.mananum }<br>
               ---제품번호  : ${idto.pronum }<br>
               ---카스번호 : ${idto.casNo }<br>
               
                <div class="col">
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                  <button class="btn btn-secondary mr-1" type="button" onclick="script:window.location='inventoryModify?inum=${idto.inum}'">수정</button>
                    <button class="btn btn-secondary mr-1" onclick="script:window.location='inventoryDelete?inum=${idto.inum}'">삭제</button>
                </div>
                </div>
                
               </div>
             </a>
             </div>
           </td>
           </tr> 
        </c:forEach>  
        </tbody>
        </table>
      </div>    
        
        
        <table>
        
        <tr>
         <td colspan="5" align="center">
            <c:if test="${pageMaker.prev }">
               <a href="goods_list?pageNum=${pageMaker.startPage-5 }">◀</a>&nbsp;&nbsp;&nbsp;
            </c:if>                              
            <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
               <c:choose>
               <c:when test="${currPage == num}">
               <u>${num}</u>&nbsp;&nbsp;&nbsp;
               </c:when>
               <c:otherwise>
               <a href="goods_list?pageNum=${num}">${num}</a>&nbsp;&nbsp;&nbsp;
               </c:otherwise>
               </c:choose>                                                               
            </c:forEach>
            <c:if test="${pageMaker.next }">
               <a href="goods_list?pageNum=${pageMaker.startPage+5 }">▶</a>
            </c:if>   
         </td>
      </tr>
       </table>
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


   <script>

            function openModal() {
              $(".inputs").each(function(i,e){
                let ids = this.id;        
                let _html = this.id.replace("1","2");
                $(e).val("")
                $("#"+_html).html("");
              });
              $('#Modal_add').modal('show');
            }
            
            function printName()  {
              $(".inputs").each(function(i,e){
                var ids = this.id;
                var target = ids.replace("1","2");
                $("#"+target).html(this.value);
                
              });
            }

            
          </script>

        <script>
          $(function(){
            $(".inputs").keyup(printName);
          });
        </script>
        
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