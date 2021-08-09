<%@page import="kr.user.mapper.UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>고지서 관리 서비스</title>

<!-- Google Font -->
<link
   href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
   rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="${cpath}/resources/css/bootstrap.min.css"
   type="text/css">
<link rel="stylesheet"
   href="${cpath}/resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="${cpath}/resources/css/elegant-icons.css"
   type="text/css">
<link rel="stylesheet" href="${cpath}/resources/css/nice-select.css"
   type="text/css">
<link rel="stylesheet" href="${cpath}/resources/css/jquery-ui.min.css"
   type="text/css">
<link rel="stylesheet"
   href="${cpath}/resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="${cpath}/resources/css/slicknav.min.css"
   type="text/css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css"

	type="text/css">
	
	<style>
	
		.bill {
		border: 3px solid black;
		border-radius: 7px;
		-moz-border-radius: 7px;
		-khtml-border-radius: 7px;
		-webkit-border-radius: 7px;
				}
	</style>
</head>

<body>
   <%
      UsersVO u_vo = null;
   if (session.getAttribute("login") != null) {
      u_vo = (UsersVO) session.getAttribute("login");
      System.out.println(u_vo + "||||이거는 맨 위에거");
   }
   %>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <!-- Humberger Begin -->
   <div class="humberger__menu__overlay"></div>
   <div class="humberger__menu__wrapper">
      <div class="humberger__menu__logo">
         <a href="./index_main.do"><img src="${cpath}/resources/img/logo1.png" alt=""></a>
      </div>
      <div class="humberger__menu__widget">
         <div class="header__top__right__auth">
            <%
               if (u_vo == null) {
            %>
            <a href="./login_main2.do"><i class="fa fa-user"></i>로그인</a> <a
               href="./join_main2.do"><i class="fa fa-user"></i>회원가입</a>
            <%
               } else {
            %>
            <a href="${cpath}/UsersLogout.do"><i class="fa fa-user"></i>로그아웃</a>
            <a href="./mypage_main.do"><i class="fa fa-user"></i>마이페이지</a>
            <%
               }
            %>
         </div>
      </div>
      <nav class="humberger__menu__nav mobile-menu">
         <ul>
            <%
               if (u_vo == null) {
            %>
            <li><a href="#">고지서 서랍</a>
               <ul class="header__menu__dropdown">
                  <li><a href="#" onClick="alert('로그인 후 이용해주세요')">고지서 업로드</a></li>
                  <li><a href="#" onClick="alert('로그인 후 이용해주세요')">고지서 관리</a></li>
                  <li><a href="#" onClick="alert('로그인 후 이용해주세요')">고지서 분석</a></li>
               </ul></li>
            <li><a href="#" onClick="alert('로그인 후 이용해주세요')">커뮤니티</a></li>
            <li><a href="#" onClick="alert('로그인 후 이용해주세요')">문의하기</a></li>
            <%
               } else {
            %>
            <li><a href="#">고지서 서랍</a>
               <ul class="header__menu__dropdown">
                  <li><a href="./bill_upload.do">고지서 업로드</a></li>
                  <li><a
                     href="${cpath}/NoticeList.do?user_num=<%=u_vo.getUser_num()%>">고지서
                        관리</a></li>
                  <li><a href="./bill_graph.do">고지서 분석</a></li>
               </ul></li>
            <li><a href="${cpath}/communityList.do">커뮤니티</a></li>
            <li><a href="./contact.do">문의하기</a></li>
            <%
               }
            %>
         </ul>
      </nav>
      <div id="mobile-menu-wrap"></div>
      <div class="header__top__right__social"></div>
      <div class="humberger__menu__contact">
         <ul>
         </ul>
      </div>
   </div>
   <!-- Humberger End -->

   <!-- Header Section Begin -->
   <header class="header">
      <div class="container">
         <div class="row">
            <div class="col-lg-3">
               <div class="header__logo">
                  <a href="./index_main.do"><img src="${cpath}/resources/img/logo1.png"><!-- alt="" style = "border-style:1px solid black"--></a>
               </div>
            </div>
            <div class="col-lg-7">
               <nav class="header__menu">
                  <ul>
                     <%
                        if (u_vo == null) {
                     %>
                     <li class="active">
                     <li><a href="#" style="font-size:20px;">고지서 서랍</a>
                        <ul class="header__menu__dropdown">
                           <li><a href="#" onClick="alert('로그인 후 이용해주세요')" style="font-size:16px;">고지서 업로드</a></li>
                           <li><a href="#" onClick="alert('로그인 후 이용해주세요')" style="font-size:16px;">고지서 관리</a></li>
                           <li><a href="#" onClick="alert('로그인 후 이용해주세요')" style="font-size:16px;">고지서 분석</a></li>
                        </ul></li>
                     <li><a href="#" onClick="alert('로그인 후 이용해주세요')" style="font-size:20px;">커뮤니티</a></li>
                     <li><a href="#" onClick="alert('로그인 후 이용해주세요')" style="font-size:20px;">문의하기</a></li>
                     <%
                        } else {
                     %>
                     <li class="active">
                     <li><a href="#" style="font-size:20px;">고지서 서랍</a>
                        <ul class="header__menu__dropdown">
                           <li><a href="./bill_upload.do" style="font-size:16px;">고지서 업로드</a></li>
                           <li><a href="${cpath}/NoticeList.do?user_num=<%=u_vo.getUser_num()%>" style="font-size:16px;">고지서 관리</a></li>
                           <li><a href="./bill_graph.do" style="font-size:16px;">고지서 분석</a></li>
                        </ul></li>
                     <li><a href="${cpath}/communityList.do" style="font-size:20px;">커뮤니티</a></li>
                     <li><a href="./contact.do" style="font-size:20px;">문의하기</a></li>
                     <%
                        }
                     %>
                  </ul>
               </nav>
            </div>
            <div class="col-lg-2">
               <nav class="header__menu">
                  <!--  로그인 배너 (찐) -->
                  <%
                     if (u_vo == null) {
                  %>
                  <a href="./login_main2.do"
                     style="font-size: 12px; color: gray; font-weight: bold; letter-spacing: 2px;">로그인</a>
                  &emsp;&emsp;&emsp; <a href="./join_main2.do"
                     style="font-size: 12px; color: gray; font-weight: bold; letter-spacing: 2px;">회원가입</a>
                  <%
                     } else {
                  %>
                  <a href="${cpath}/UsersLogout.do"
                     style="font-size: 12px; color: gray; font-weight: bold; letter-spacing: 2px;">로그아웃</a>
                  &emsp; <a href="./mypage_main.do"
                     style="font-size: 12px; color: gray; font-weight: bold; letter-spacing: 2px;">마이페이지</a>
                  <%
                     }
                  %>
               </nav>
            </div>
         </div>
         <div class="humberger__open">
            <i class="fa fa-bars"></i>
         </div>
      </div>
   </header>
   <!-- Header Section End -->

   <!-- Breadcrumb Section Begin -->
   <section class="breadcrumb-section set-bg"
      data-setbg="${cpath}/resources/img/menu_banner.png">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center">
               <div class="breadcrumb__text">
                  <h2>커뮤니티</h2>
                  <div class="breadcrumb__option"></div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- Breadcrumb Section End -->

   <!-- Related Blog Section Begin -->
   <section class="related-blog spad">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="section-title related-blog-title">
                  <a style="font-size: 36px; color: black; font-weight: bold;">의견 게시판</a>
                  <br>
                  <br>
                  <button type="button" class="site-btn"
                     onclick="location.href='${cpath}/comWrite.do' ">글쓰기</button>
                  <p>ㅤ</p>
               </div>
            </div>
         </div>
         
         
          <!-- a --><div class="row featured__filter">
                <c:forEach var = "vo" items = "${list}"> 
                <div class="col-lg-6 col-md-7 col-sm-10 mix oranges fresh-meat">
                
                    <div class="featured__item">
                       <div style="border: 3px solid white;border-radius: 7px;-moz-border-radius: 7px;-khtml-border-radius: 7px;-webkit-border-radius: 7px;" 
                       class="featured__item__pic set-bg" data-setbg="${cpath}/resources/img/${vo.board_img}" onclick="location.href='${cpath}/comm_contents.do?board_num=${vo.board_num}' ">
                               <ul>
                                <!--  <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>-->
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h3><a href="${cpath}/comm_contents.do?board_num=${vo.board_num}">${vo.board_title}</a></h3>
                            <h5>${vo.user_id}</a></h5>
                            <h6>${vo.board_day}</a></h6>
                        </div>
                    </div>
                </div>
                </c:forEach> 
         	</div>
         
    <%--      <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <img class="bill" src="${cpath}/resources/img/bill/bill1.jpg" alt="" >
                  </div>
                  <div class="blog__item__text">
                     <ul>
                        <li><i class="fa fa-calendar-o"></i> 2021/08/02</li>
                        <li><i class="fa fa-comment-o"></i> 3</li>
                     </ul>
                     <h5>
                        <a href="./comm_contents.do">제 가스요금 좀 봐주세요...</a>
                     </h5>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <img class="bill" src="${cpath}/resources/img/bill/bill2.jpg" alt="">
                  </div>
                  <div class="blog__item__text">
                     <ul>
                        <li><i class="fa fa-calendar-o"></i> 2021/08/02</li>
                        <li><i class="fa fa-comment-o"></i> 1</li>
                     </ul>
                     <h5>
                        <a href="./comm_contents.do">관리비 이 정도면 어떤가요?</a>
                     </h5>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <img class="bill" src="${cpath}/resources/img/bill/bill3.jpg" alt="">
                  </div>
                  <div class="blog__item__text">
                     <ul>
                        <li><i class="fa fa-calendar-o"></i> 2021/08/03</li>
                        <li><i class="fa fa-comment-o"></i> 2</li>
                     </ul>
                     <h5>
                        <a href="./comm_contents.do">고지서 또 날아왔습니다 ㅠㅠ</a>
                     </h5>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <img class="bill" src="${cpath}/resources/img/bill/bill4.jpg" alt="">
                  </div>
                  <div class="blog__item__text">
                     <ul>
                        <li><i class="fa fa-calendar-o"></i> 2021/08/03</li>
                        <li><i class="fa fa-comment-o"></i> 2</li>
                     </ul>
                     <h5>
                        <a href="./comm_contents.do">요즘 과태료 이렇게 비싼가요?</a>
                     </h5>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <img class="bill" src="${cpath}/resources/img/bill/bill5.jpg" alt="">
                  </div>
                  <div class="blog__item__text">
                     <ul>
                        <li><i class="fa fa-calendar-o"></i> 2021/08/04</li>
                        <li><i class="fa fa-comment-o"></i> 1</li>
                     </ul>
                     <h5>
                        <a href="./comm_contents.do">관리비 엄청 올랐네요!</a>
                     </h5>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
               <div class="blog__item">
                  <div class="blog__item__pic">
                     <img class="bill" src="${cpath}/resources/img/bill/bill6.jpg" alt="">
                  </div>
                  <div class="blog__item__text">
                     <ul>
                        <li><i class="fa fa-calendar-o"></i> 2021/08/04</li>
                        <li><i class="fa fa-comment-o"></i> 3</li>
                     </ul>
                     <h5>
                        <a href="./comm_contents.do">원룸 관리비도 만만치 않네요?</a>
                     </h5>
                  </div>
               </div>
            </div> --%>
         </div>
      </div>
   </section>
   <!-- Related Blog Section End -->
	<%-- <!-- Related Blog Section Begin -->
	<section class="related-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title related-blog-title">
						<a style="font-size: 36px; color: black; font-weight: bold;">의견 게시판</a>
						<br>
						<button type="button" class="site-btn"
							onclick="location.href='#' ">글쓰기</button>
						<p>ㅤ</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img class="bill" src="${cpath}/resources/img/bill/bill1.jpg" alt="" >
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> 2021/08/02</li>
								<li><i class="fa fa-comment-o"></i> 3</li>
							</ul>
							<h5>
								<a href="./comm_contents.do">제 가스요금 좀 봐주세요...</a>
							</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img class="bill" src="${cpath}/resources/img/bill/bill2.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> 2021/08/02</li>
								<li><i class="fa fa-comment-o"></i> 1</li>
							</ul>
							<h5>
								<a href="./comm_contents.do">관리비 이 정도면 어떤가요?</a>
							</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img class="bill" src="${cpath}/resources/img/bill/bill3.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> 2021/08/03</li>
								<li><i class="fa fa-comment-o"></i> 2</li>
							</ul>
							<h5>
								<a href="./comm_contents.do">고지서 또 날아왔습니다 ㅠㅠ</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img class="bill" src="${cpath}/resources/img/bill/bill4.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> 2021/08/03</li>
								<li><i class="fa fa-comment-o"></i> 2</li>
							</ul>
							<h5>
								<a href="./comm_contents.do">요즘 과태료 이렇게 비싼가요?</a>
							</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img class="bill" src="${cpath}/resources/img/bill/bill5.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> 2021/08/04</li>
								<li><i class="fa fa-comment-o"></i> 1</li>
							</ul>
							<h5>
								<a href="./comm_contents.do">관리비 엄청 올랐네요!</a>
							</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img class="bill" src="${cpath}/resources/img/bill/bill6.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> 2021/08/04</li>
								<li><i class="fa fa-comment-o"></i> 3</li>
							</ul>
							<h5>
								<a href="./comm_contents.do">원룸 관리비도 만만치 않네요?</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Related Blog Section End --> --%>

   <!-- Js Plugins -->
   <script src="${cpath}/resources/js/jquery-3.3.1.min.js"></script>
   <script src="${cpath}/resources/js/bootstrap.min.js"></script>
   <script src="${cpath}/resources/js/jquery.nice-select.min.js"></script>
   <script src="${cpath}/resources/js/jquery-ui.min.js"></script>
   <script src="${cpath}/resources/js/jquery.slicknav.js"></script>
   <script src="${cpath}/resources/js/mixitup.min.js"></script>
   <script src="${cpath}/resources/js/owl.carousel.min.js"></script>
   <script src="${cpath}/resources/js/main.js"></script>

</body>

</html>