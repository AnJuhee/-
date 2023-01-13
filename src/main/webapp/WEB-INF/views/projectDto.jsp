<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <div class=" my-3" >
   <div class="card">
    
    <table>
    
   <c:if test="${flag == true}">
       <div style="padding:10px">
          보고서 
          <a href="projectView?projectid=${pdto.projectid }"><button class="btn btn-secondary btn-sm mr-1">이름 뭘로하지? 그냥 두고 나중에 바꿀게</button></a>
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