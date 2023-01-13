<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
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
         aria-expanded="false" onclick="send_date('${adto.name_eng}','${adto.name_kor}','','')">
       <td>${adto.name_eng}</td>
       <td>${adto.name_kor}</td>
       <td>${adto.factor}</td>
       <td>${adto.casNo}</td>
     </tr>
  </c:forEach>  
  </tbody>
  </table>
  
  