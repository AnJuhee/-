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

    <title>데시보드</title>

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
    
    <!-- Bootstrap core JavaScript-->   
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   
    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/demo/chart-area-demo.js"></script>
    
  

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

   <style>.my-3 {margin-top: 0px !important;}</style>
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
                        <c:forEach items="${ddto}" var="ddto">
                        <div style="margin-bottom:0px !important" class="card border my-2" role="button" data-bs-toggle="collapse" href="#project_content${ddto.projectid }" aria-expanded="false" aria-controls="project_content" onclick="get_project_list('${ddto.projectid }')">
                           <div class="col">
                              ${ddto.project}
                           </div>
                        </div>
                        <!--과제-->

                        <!--과제 내용-->                   
                        <div class="collapse " id="project_content${ddto.projectid }">
                        <!--   <div class="card card-body " id="plist_area${ddto.projectid }">보고서</div> -->
                        </div>
                        <!--과제 내용 끝-->                       
                       
                       
                       </c:forEach>
                   </div>         
                   <!-- 카드바디 끝 -->   
                
                   </div>
            </div>
            <!--프로젝트 카드 끝-->
                
           
            
            <!--최근 프로젝트 카드-->
            <c:forEach items="${dto1 }" var="dto1" >
            <div class="col" draggable="true" ondragstart="drag(event)" id="drag2">
            
                <div class="card shadow mb-4 " id="projectid">
                    <!-- 카드헤더 드롭다운 -->
                    <div
                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">
                        <a href="projectView?projectid'${dto1.projectid}'">최근 프로젝트</a></h6>
                        
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
                    <div class="card-body" >                        
                        <!--최근프로젝트 과제이름 시작-->
                       
                        
                        
                        <div class="card bold col">
                              <div class="mt-2">
                                <h5 class=" font-weight-bold">${dto1.project }
                                    <span class="float-right dday">D-365</span>
                                </h5>
                                </div>                     
                        </div> 
                        <!--최근프로젝트 과제이름 끝-->

                        <!--최근프로젝트 과제 내용 시작-->
                        <div class="card font-weight-bold mb-2 bold col">
                             Server ㅇㄴㄹㄴㅇㄹ Migrationg fasdgasdgas
                             difugsadhgashgdfaghsdfjghs
                             adjfasd
                             sdafsadfsad
                             fasdfasdfasdfasdfasdf
                             asdfasdf 
                        </div>
                        <!--최근프로젝트 과제 내용 끝-->
                         
                        <!--최근프로젝트 진행 바-->                                            
                        <div class=" progress mb-2" > 
                            <div class="progress progress-bar bg-danger" role="progressbar" aria-label="Example with label" style="width: 0%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                            </div>  
                           <input type="hidden"  class="startdate" value="${dto1.startdate }">
                          <input type="hidden" class="enddate"  value="${dto1.finishdate }">
                        </div>
                       
                        
                        <div class="card bold col">
                         <li>책임자  &nbsp;&nbsp;&nbsp;&nbsp; ${dto1.leader } </li>
                         <li>연구원 : &nbsp;&nbsp;&nbsp;&nbsp; ${dto1.researcher} </li>
                         </div>
                        
                       
                        
                        
                    </div>
                    <!--카드바디끝-->
                </div>                         
               
            </div>
            <!--최근 프로젝트 카드-->
            </c:forEach>

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
                            재고관리
                            </div>
                        <div class="chart-pie pt-4 pb-2">
                            <canvas id="myPieChart"></canvas>
                        </div>
                        <div class="mt-4 text-center small">
                            <span class="mr-2">
                                <i class="fas fa-circle text-primary"></i> 화학인자
                            </span>
                            <span class="mr-2">
                                <i class="fas fa-circle text-success"></i> 생물체
                            </span>
                            <!-- 
                            <span class="mr-2">
                                <i class="fas fa-circle text-info"></i> 보호구 
                            </span>
                             -->
                        </div>
                    </div>
                </div>
            </div>
             <!--재고관리 카드 끝-->
             
             
                          
              <!--유효기간 카드 시작-->
          <div class="col" draggable="true" ondragstart="drag(event)" id="drag4">
              <div class="card shadow mb-4 ">
                  <!-- Card Header - Dropdown -->
                  <div
                      class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                      <h6 class="m-0 font-weight-bold text-primary">유효기간</h6>
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
                  <div class="card-body progress-count">
                   
                      
            <h4 class="small font-weight-bold">만료<span
                    class="float-right">20%</span></h4>
            <div class="progress mb-4">
                <div class="progress-bar bg-danger" role="progressbar" style="width: 20%"
                    aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <h4 class="small font-weight-bold">7일<span
                    class="float-right">40%</span></h4>
            <div class="progress mb-4">
                <div class="progress-bar bg-warning" role="progressbar" style="width: 40%"
                    aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <h4 class="small font-weight-bold">30일<span
                    class="float-right">60%</span></h4>
            <div class="progress mb-4">
                <div class="progress-bar" role="progressbar" style="width: 60%"
                    aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <h4 class="small font-weight-bold">100일<span
                    class="float-right">80%</span></h4>
            <div class="progress mb-4">
                <div class="progress-bar bg-info" role="progressbar" style="width: 80%"
                    aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <h4 class="small font-weight-bold">1년<span
                    class="float-right">Complete!</span></h4>
            <div class="progress">
                <div class="progress-bar bg-success" role="progressbar" style="width: 100%"
                    aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
                  </div>
              </div>
          </div>
           <!--유효기간 카드 끝-->
           
           
            
         
        </div>
        

    </div>
    
   <input type="hidden" id="devtest" value="${che },${bio }">
   
   <!-- 
   <div> 화학인자개수  :  ${che }</div>
   <div> 생물체   :  ${bio }   </div>
    --> 
   
   <div> 
   <c:forEach items="${ex }" var="ex">
      <input type="hidden" class="goodsend${ex.inum }" value="${ex.exdate }">
      <input type="hidden" class="goodsdday${ex.inum }" value="">      
   </c:forEach>
   
   
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


   <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script> 
        <script>
        function get_project_list(idx) {
         $.get("projectView_act?projectid="+idx+"&flag=0", function(result){
            $("#project_content"+idx).html(result);
         },'html');
      }
        $(function(){
            $("div[id^='projectid']").each(function(i,e){
            
              var sdate = $(e).find('.startdate').val(); // input 에다가 넣었으니까 val로 하면됌
              var edate = $(e).find('.enddate').val();
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
        
        <script>
      Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
      Chart.defaults.global.defaultFontColor = '#858796';
      
          // Pie Chart Example
      var ctx = document.getElementById("myPieChart");
      var myPieChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
          labels: ["화학인자", "생물체", "보호구"],
          datasets: [{
            data: $("#devtest").val().split(","),
            backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
            hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
            hoverBorderColor: "rgba(234, 236, 244, 1)",
          }],
        },
        options: {
          maintainAspectRatio: false,
          tooltips: {
            backgroundColor: "rgb(255,255,255)",
            bodyFontColor: "#858796",
            borderColor: '#dddfeb',
            borderWidth: 1,
            xPadding: 15,
            yPadding: 15,
            displayColors: false,
            caretPadding: 10,
          },
          legend: {
            display: false
          },
          cutoutPercentage: 80,
        },
      });
      
      </script>
      
      <script>
          $(function(){
            var d_cnt = {'0' : 0, '1': 0, '2': 0, '3': 0,'4':0}; // 이쪽 이거 나중에 그래프 추가할때도 매칭 잘 시켜주면댐
            // 이제부터 0: 만료, 1: 7일, 2: 30일, 3: 100일, 4: 1년 // 여기랑

            $("[class^='goodsend']").each(function(i,e){
              var _goodsend = $(e).val();
              var target = $(e).attr("class").replace("goodsend","goodsdday");
              var regex = RegExp(/^\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/); //yyyy-mm-dd 식에서만 실행
              // 여기서 같이 하면 댈듯?
              let _dday = diffDay2(_goodsend);
              if(_dday <= 365 && _dday > 100 ) { d_cnt['4'] += 1;} // d_cnt['4'] 여기 인덱스 카운팅 0 은 만료 1일 7일 맞추면댐  완ㄹ료
              else if(_dday >= 30 ) { d_cnt['3'] += 1;} // 7보다 작은거 30일보다 작은거 이 순서 지금은 큰거로 시작해서 반대임이거 0~4 인데 4~0 으로 받는거 헤갈리면 역순으로 하면댐 
              else if(_dday >= 7 ) { d_cnt['2'] += 1;}
              else if(_dday >= 0 ) { d_cnt['1'] += 1;}
              else if(_dday <= 0) { d_cnt['0'] += 1;}              
              $("."+target).val(diffDay2(_goodsend));
            });
            $(".progress-count").find('.progress-bar').each(function(i,e){
              let pcnt = d_cnt[i] >= 100 ? 100 : d_cnt[i]; // 아니면 여기?
              $(".progress-count").find(".float-right:eq("+i+")").html(pcnt);
              $(".progress-count").find(".progress-bar:eq("+i+")").css("width",pcnt+"%");
            }); // ㅇ인덱스 보라는게 어떤거임
            //console.log(d_cnt) 끝? 끝난듯 다시다시 100 넘어가면 카운트 안해야 할거같은데 100 아니고 365 넘어가는거
          })   
          function diffDay2(goodsend) { //컬럼이름 자리
            var gend =  goodsend.split("-"); //yyyy-mm-dd 리스트로 만들기 .split("-")            
            var today = new Date().toJSON().substr(0,10).split("-");
  
            var _gend = new Date(gend[0],gend[1],gend[2]).getTime(); // timestamp  만들기            
            var _today = new Date(today[0],today[1],today[2]).getTime(); //오늘날짜
                       
            var gend_gap = _gend - _today; //종료일-오늘            
            
                    
            
            var gdday = Math.ceil(gend_gap / (1000 * 60 * 60 * 24)); 

            return gdday;
          }
            
          </script>

    

    
    
    
    

    

</body>

</html>