<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<h1> JSP 시작하기 </h1>
<%
  // java문법
  String name = "권규정"; // 얘는 지역변수이므로 반드시 초기화 필수
  int age = 20;

  // 콘솔출력 : 여기서 out은 콘솔
  System.out.println("난 어디에 출력되지?");
  System.out.println(1);

%>

<h3>
  이름 : <%=name%> <br>
  나이 : <%=age%> 살<br>
</h3>

<%
  String message = "신기하다";
  List<String> list = Arrays.asList("등산", "수영", "낚시", "골프", "축구");

  // 브라우져에 출력 : 여기서 out은 브라우져
  out.println("메시지 " + message + "<br>");
  out.println("<h4 style='color: red'>취미 : " + list + "</h4>");

  String addr = "경기도 성남시 오리역";

  request.getParameter("dd");

%>

<hr>
이름 : <%=name%> <br>
이름 : <%=this.name%> <br>

함수호출 : <%=this.test()%>


<%!
  // 전역변수 선언, 메소드 선언
  String name;
  String phone;

  public String test() {
    System.out.println("test() 호출됨~~");
    return "재미있다";
  }
%>

</body>
</html>