<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
    ul
    {
        list-style: none;
        background-color: #1c1c1c;
        margin:0;
    }
  li{
      display:inline-block;
      padding-top: 13px;
      padding-bottom: 13px;
      text-align: center;
      font-size: 17px;
  }
  li a{
      text-decoration: none;
      color:white;
      display:block;
      padding-right: 7px;
      padding-left: 7px;
  }
  li button{
      margin-right: 680px;
  }
  .text{
        margin-right: 20px;
  }
  .set1{
      margin-right: 20px;
  }
  
 </style>
</head>
<body>
    <div class="nav">
    <ul>
        <li><input type="text" class="text"></li>
        <li><button>search</button></li>
        <li><a href="showrestaurant.jsp">Restaurants</a></li>
        <li><a href="add" class="set1">cart</a></li>
        <li><a href="">User profile</a></li>
    </ul>
</div>
</body>
</html>