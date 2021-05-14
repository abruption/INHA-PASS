<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>해외직구 통관조회 및 배송조회 :: INHA-PASS </title>
</head>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<body>

<!--  Header 부분 시작  -->
<jsp:include page="header.jsp" flush="false"></jsp:include>
<!--  Header 부분 종료  -->	
	
	
 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding main-board mgb10"> 
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 no-padding-m"> 
   <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding-m" style="background-color:#aea8ff;color:white"> 
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
     <p style="margin:3px 0px;">자유게시판</p> 
    </div> 
   </div> 
   
   
   <div class="col-lg-12 col-md-12 col-sm-12  col-xs-12 no-padding"> 
    <p class="tr"><a class="text-ellipsis" href="view.jsp?bbsID=1">테스트중입니다.</a></p> 
    <p class="tr"><a class="text-ellipsis" href="">&nbsp;</a></p> 
    <p class="tr"><a class="text-ellipsis" href="">&nbsp;</a></p> 
    <p class="tr"><a class="text-ellipsis" href="">&nbsp;</a></p> 
    
   </div> 
  </div> 
  
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 no-padding-m"> 
   <div class="col-lg-12 col-xs-12 no-padding-m" style="background-color:#7ce0d7;color:white"> 
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
     <p style="margin:3px 0px;">공지사항</p> 
    </div> 
   </div> 
   
   <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding"> 
    <p class="tr"><a class="text-ellipsis" href="view.jsp?bbsID=1">테스트중입니다.</a></p> 
    <p class="tr"><a class="text-ellipsis" href="">&nbsp;</a></p> 
    <p class="tr"><a class="text-ellipsis" href="">
    &nbsp;</a></p> 
    <p class="tr"><a class="text-ellipsis" href="">&nbsp;</a></p>  
   </div> 
  </div> 
 </div>
 
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding mh500">
		<div id="unipassList" class="col-lg-12 col-md-12 col-md-12 col-sm-12 col-xs-12 bg-white main-board pdb10 no-padding br5">		
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">			
				<div class="col-lg-12 col-xs-12 no-padding-m" style="background-color: white;">
					<div class="col-lg-7 col-md-7 col-sm-6 col-xs-12 no-padding">
						<p style="margin:3px 0px; padding:16px 15px 0px 15px;"><a href="javascript:void(0)" style="color: gray; font-size:14px;"><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;&nbsp;포워더별 평균 소요기간(최근 5일 기준)</a></p>
					</div>										
				</div>
				
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">	
		<div class="col-lg-12 col-md-12 col-md-12 col-sm-12 col-xs-12 mgt10 bg-white main-board pdb10 no-padding br5">		
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">			
				<div class="col-lg-12 col-xs-12 no-padding-m" style="background-image: linear-gradient(23deg, #9c6aff, #80bfff); color:white">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
						<p style="margin:3px 0px; padding:11px 15px;"><a href="javascript:void(0)" style="color:white;"><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;&nbsp;통관소요시간 - 최근 1주일 평균 <span class="pull-right">11월 17일 13시 기준</span></a></p>
					</div>										
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding mh500">
		<div id="unipassList" class="col-lg-12 col-md-12 col-md-12 col-sm-12 col-xs-12 bg-white main-board pdb10 no-padding br5">		
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">			
				<div class="col-lg-12 col-xs-12 no-padding-m" style="background-color: white;">
					<div class="col-lg-7 col-md-7 col-sm-6 col-xs-12 no-padding">
						<p style="margin:3px 0px; padding:16px 15px 0px 15px;"><a href="javascript:void(0)" style="color: gray; font-size:14px;"><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;&nbsp;포워더별 평균 소요기간(최근 5일 기준)</a></p>
					</div>										
				</div>
				
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no-padding">
					<table class="table mgb0">
						<thead>
							<tr>
								<th>화물운송주선업자(포워더)</th>
								<th>최소</th>
								<th>최대</th>
								<th>평균</th>
							</tr>
						</thead>
						<tbody>							
							
								<tr>
									<td style="border-top:1px solid #ccc;">(주)에이씨티앤코아물류 (평택항)</td>
									<td style="border-top:1px solid #ccc;">0일</td>
									<td style="border-top:1px solid #ccc;">27일</td>
									<td style="border-top:1px solid #ccc;">2.17일</td>
								</tr>
								<tr>
									<td style="background-color:#fafafa; border-top:none;" colspan="4"> 
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>
									</td>
								</tr>
							
							
								<tr>
									<td style="border-top:1px solid #ccc;">씨제이대한통운(주) (서울/인천)</td>
									<td style="border-top:1px solid #ccc;">0일</td>
									<td style="border-top:1px solid #ccc;">31일</td>
									<td style="border-top:1px solid #ccc;">2.35일</td>
								</tr>
								<tr>
									<td style="background-color:#fafafa; border-top:none;" colspan="4"> 
										<span style="display:inline-block; padding:0px 5px;"> 당일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>
									</td>
								</tr>
							
							
								<tr>
									<td style="border-top:1px solid #ccc;">(주)판토스 (서울/인천)</td>
									<td style="border-top:1px solid #ccc;">0일</td>
									<td style="border-top:1px solid #ccc;">6일</td>
									<td style="border-top:1px solid #ccc;">1.18일</td>
								</tr>
								<tr>
									<td style="background-color:#fafafa; border-top:none;" colspan="4"> 
										<span style="display:inline-block; padding:0px 5px;"> 4일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 당일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 당일(11/17) </span> 
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/16) </span>
									</td>
								</tr>


								<tr>
									<td style="border-top:1px solid #ccc;">롯데글로벌로지스(주) (서울/인천)</td>
									<td style="border-top:1px solid #ccc;">0일</td>
									<td style="border-top:1px solid #ccc;">1일</td>
									<td style="border-top:1px solid #ccc;">0.85일</td>
								</tr>
								<tr>
									<td style="background-color:#fafafa; border-top:none;" colspan="4"> 
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 2일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>
									</td>
								</tr>
							
								<tr>
									<td style="border-top:1px solid #ccc;">(주)디에이치엘코리아 (서울/인천)</td>
									<td style="border-top:1px solid #ccc;">0일</td>
									<td style="border-top:1px solid #ccc;">3일</td>
									<td style="border-top:1px solid #ccc;">1.12일</td>
								</tr>
								<tr>
									<td style="background-color:#fafafa; border-top:none;" colspan="4"> 
										<span style="display:inline-block; padding:0px 5px;"> 3일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 당일(11/16) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 2일(11/16) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 2일(11/15) </span>
									</td>
								</tr>
							
								<tr>
									<td style="border-top:1px solid #ccc;">(주)성원글로벌카고 (서울/인천)</td>
									<td style="border-top:1px solid #ccc;">0일</td>
									<td style="border-top:1px solid #ccc;">2일</td>
									<td style="border-top:1px solid #ccc;">0.81일</td>
								</tr>
								<tr>
									<td style="background-color:#fafafa; border-top:none;" colspan="4"> 
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 2일(11/16) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/16) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 1일(11/16) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 2일(11/16) </span>
									</td>
								</tr>

								<tr>
									<td style="border-top:1px solid #ccc;">페더럴익스프레스코리아(유) (서울/인천)</td>
									<td style="border-top:1px solid #ccc;">0일</td>
									<td style="border-top:1px solid #ccc;">1일</td>
									<td style="border-top:1px solid #ccc;">0.05일</td>
								</tr>
								<tr>
									<td style="background-color:#fafafa; border-top:none;" colspan="4"> 
										<span style="display:inline-block; padding:0px 5px;"> 8일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 당일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 당일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 당일(11/17) </span>  
										<span style="display:inline-block; padding:0px 5px;"> 당일(11/17) </span>
									</td>
								</tr>
							</tbody>
						</table>
						<br><br><br>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>

<!-- Footer 부분 시작 -->
 <jsp:include page="footer.jsp" flush="false" /> 
<!-- Footer 부분 종료 -->	

</body>
</html>