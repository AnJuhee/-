<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class=" my-3" >
   <div class="card">
    
    <table>
    
   <c:if test="${flag == true}">
       <div class="row">
          <div class="col m-2 mt-3   " >
            보고서 목록                        
          </div>
          <div class="col m-2 d-grid gap-2 d-md-flex justify-content-md-end ">
            <a href="projectView?projectid=${pdto.projectid }"><button class=" btn btn-secondary  ">이동</button></a>
          </div>
        </div>
    </c:if> 
    <c:forEach items="${rdto }" var="rdto">
    <tr>
    <td>▶<a href="reportView?rnum=${rdto.rnum }&projectid=${rdto.projectid}" style="text-decoration:none;color:#000087"> ${rdto.title }</a></td>
    
    </tr> 
    </c:forEach>
    </table> 
     
    </div>        
</div>