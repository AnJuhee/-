<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
  
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<div class="card" style="width: 55rem;margin:auto;">  
<div class="card" style="width: 50rem;height:10rem;margin:30px;box-shadow:5px 5px 10px #D5D5D5;">
  <div style="padding:20px;">
  	<h5 style="font-weight:bold">등록할 수량</h5>
  </div>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username with two button addons">
	  <button class="btn btn-outline-secondary" type="button">-</button>
	  <button class="btn btn-outline-secondary" type="button">+</button>
  </div>
</div>

<div class="card" style="width: 50rem;height:100%;margin:30px;box-shadow:5px 5px 10px #D5D5D5;">

  <div style="padding:20px;">
  	<h5 style="font-weight:bold">물품정보</h5>
  </div>
  <span style="padding:10px 0 0 25px;font-weight:bold">이름</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <span style="padding:25px 0 0 25px;font-weight:bold">카테고리</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <span style="padding:25px 0 0 25px;font-weight:bold">브랜드</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <span style="padding:25px 0 0 25px;font-weight:bold">제품번호</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <span style="padding:25px 0 0 25px;font-weight:bold">관리번호</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <span style="padding:25px 0 0 25px;font-weight:bold">CasNo.</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <span style="padding:25px 0 0 25px;font-weight:bold">용량</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <span style="padding:25px 0 0 25px;font-weight:bold">보유량</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <span style="padding:25px 0 0 25px;font-weight:bold">유효기간</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <span style="padding:25px 0 0 25px;font-weight:bold">보관위치</span>
  <div class="input-group" style="padding:10px 20px 0 20px;">
	  <input class="form-control" type="text" placeholder="Default input" aria-label="default input example">
  </div>
  <div style="padding:25px;text-align:center;">
  	<tr>
  	  <td><button type="button" class="btn btn-outline-primary">취소</button></td>
  	  <td><button type="button" class="btn btn-primary">등록</button></td>
  	</tr>
  </div>
</div>

</div>
</body>
</html>