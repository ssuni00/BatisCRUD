<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <style>
    img,label { display:inline-block;}
    label{ width:130px}
    button{ background-color: #e78787; color:white;font-size:15px}

    .adminButton{
      background-color: antiquewhite;
      color: black;
    }
  </style>
  <script>
    function show_admin(){
      alert("id: admin, pw: 1234");
    }
  </script>
</head>

<body>
<div style='width:100%;text-align:center;padding-top:100px'>
  <h1> 실전프로젝트 2분반 Final Project </h1>
  <h2> 팀원1: 22200809 황수현 </h2>
  <h2> 팀원2: 22200811 황유민 </h2>
  <h4> 관리자 계정으로 로그인하여 주세요!</h4>
  <h4><button class="adminButton" onclick="show_admin()">id/pw 보기!</button></h4>

  <img src='../img/login.png' height="250">
  <form method="post" action="loginOk">
    <div>
      <label>ID: </label>
      <input type='text' name='userid'/>
    </div>
    <div>
      <label>Password: </label>
      <input type='password' name='password'/>
    </div>
    <br/><button type='submit'>login</button>
  </form>
</div>
</body>
</html>