<%@ page import="java.sql.*" %>
<%@ page import="user.bbsDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="org.w3c.dom.*"%> 
<%@ page import="javax.xml.parsers.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<title>Insert title here</title>
</head>
<style>
#tekbeCompnayList, #invoiceNumberText {
    width: 500px;
    height: 30px;
    padding-left: 10px;
    font-size: 18px;
    color: #0000ff;
    border: 1px solid #006fff;
    border-radius: 3px;
}

#tekbeCompnayName, #invoiceNumber{
  color:black; 
  font-weight: bold; 
  margin-right: 20px;
  font-size: 18px;
}

#myButton1 {
	border: 1px solid skyblue; 
	background-color: rgba(0,0,0,0); 
	color: skyblue; 
	padding: 5px;

  /* background: #6893b0;
  background-image: -webkit-linear-gradient(top, #6893b0, #2980b9);
  background-image: -moz-linear-gradient(top, #6893b0, #2980b9);
  background-image: -ms-linear-gradient(top, #6893b0, #2980b9);
  background-image: -o-linear-gradient(top, #6893b0, #2980b9);
  background-image: linear-gradient(to bottom, #6893b0, #2980b9);
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 5px 5px 5px 5px;
  text-decoration: none; */
}

#myButton1:hover {

	color:white; 
	background-color: skyblue;
  
  /* background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none; */
}

#btn{
	border-top-left-radius: 5px; 
	border-bottom-left-radius: 5px; 
	margin-right:-4px;
}

table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}

</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
<script type="text/javascript">
(function() {
	emailjs.init("<emailjs API Key>");
})();
</script>

<%
	String email = null;
	String userID = null;
	if (session.getAttribute("userID") != null) {//??????????????????????????? ????????? ???????????? ???????????? 
	userID = (String) session.getAttribute("userID");//?????????????????? ?????? ???????????? ????????????.
	}
	
	if (userID == null) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('????????? ???????????? ???????????????.')");
	script.println("location.href = 'login.jsp'");
	script.println("</script>");
	}
	
	Connection conn = null;
	
	String url 		= "jdbc:mysql://<IP??????>:<PORT>/<DB Table>?&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String user 	= "<ID>";
	String password = "<PW>";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);
	
	Statement stat = null;
	ResultSet rs = null;
	
	String sql = "select * from user where userID='"+userID+"'"; 

	stat = conn.createStatement();
	rs = stat.executeQuery(sql);

	int result = 0;
	
	if(rs.next()){
		result = 1;
		email = rs.getString("userEmail");
	}
	
	request.setAttribute("result", result);
	
	rs.close();
	stat.close();
	conn.close();
%>

<script type="text/javascript">


$(document).ready(function(){
	
	var myKey = "<SWEET TRACKER API KEY>"; // sweet tracker?????? ???????????? ????????? ??? ?????????.
	
	// ????????? ?????? ?????? company-api
    $.ajax({
        type:"GET",
        dataType : "json",
        url:"http://info.sweettracker.co.kr/api/v1/companylist?t_key="+myKey,
        success:function(data){
        		
        		// ?????? 1. JSON.parse ????????????
        		var parseData = JSON.parse(JSON.stringify(data));
         		console.log(parseData.Company); // ?????? Json Array??? ???????????? ?????? Array??? Company ??????
        		
        		// ?????? 2. Json?????? ????????? ???????????? Array??? ?????? ????????????
        		var CompanyArray = data.Company; // Json Array??? ???????????? ?????? Array??? Company ??????
        		console.log(CompanyArray); 
        		
        		var myData="";
        		$.each(CompanyArray,function(key,value) {
            			myData += ('<option value='+value.Code+'>' + value.Name + '</option>');        				
        		});
        		$("#tekbeCompnayList").html(myData);
        }
    });
	
	
	
	$("#myButton1").click(function() {
		var myKey = "<UNIPASS API KEY>";
		var t_invoice = $('#invoiceNumberText').val();
		
    	$.ajax({
        	type:"GET",
        	dataType : "xml",
        	async: false,
        	url:"https://unipass.customs.go.kr:38010/ext/rest/cargCsclPrgsInfoQry/retrieveCargCsclPrgsInfo?crkyCn="+myKey+"&hblNo="+t_invoice+"&blYy=2020",
        	success:function(data){
        		var invoiceData = "";
        		var myTracking="";
        		var header ="";
        		
        		var title = $(data).find("prnm").text();
        		var status = $(data).find("csclPrgsStts").text();
        		var process = $(data).find("prgsStts").text();
        		var imports = $(data).find("dsprNm").text();
        		var importtime = $(data).find("etprDt").text();
        		var customs = $(data).find("etprCstm").text();
        		
        		if(status == "?????????????????? ??????"){
        		emailjs.send('gmail', 'template_jvhoqrg', {
					message : "????????? ????????? ??????",
					email : email,
				});
        	}
        		
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"?????????"+'</td>');     				
        		invoiceData += ('<th>'+title+'</td>');     				
        		invoiceData += ('</tr>');
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"??????????????????"+'</td>');     				
        		invoiceData += ('<th>'+status+'</td>');     				
        		invoiceData += ('</tr>'); 
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"????????????"+'</td>');     				
        		invoiceData += ('<th>'+process+'</td>');     				
        		invoiceData += ('</tr>'); 
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"?????????"+'</td>');     				
        		invoiceData += ('<th>'+imports+'</td>');     				
        		invoiceData += ('</tr>'); 
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"?????????"+'</td>');     				
        		invoiceData += ('<th>'+importtime+'</td>');     				
        		invoiceData += ('</tr>'); 
        		invoiceData += ('<tr>');            	
        		invoiceData += ('<th>'+"?????????"+'</td>');     				
        		invoiceData += ('<th>'+customs+'</td>');     				
        		invoiceData += ('</tr>'); 
        		$("#result1").html(invoiceData);
        		
        	
        		
        		header += ('<tr>');            	
        		header += ('<th>'+"????????????"+'</th>');
        		header += ('<th>'+"????????? ??????"+'</th>');
        		header += ('<th>'+"????????????"+'</th>');
        		header += ('<th>'+"????????????"+'</th>');     				
    			header += ('</tr>');  
		
    			var temp = $(data).find("cargCsclPrgsInfoDtlQryVo");
	       
				$(data).find('cargCsclPrgsInfoDtlQryVo').each(function (){
    				
					var customname = $(this).find("shedNm").text();
					var customdetail = $(this).find("rlbrCn").text();
		        	var progress = $(this).find("cargTrcnRelaBsopTpcd").text();
		        	var date = $(this).find("rlbrDttm").text(); 
						
    				myTracking += ('<tr>');            	
    				myTracking += ('<td>'+customname+'</td>');
    				myTracking += ('<td>'+customdetail+'</td>');
    				myTracking += ('<td>'+progress+'</td>');
    				myTracking += ('<td>'+date+'</td>');   				
        			myTracking += ('</tr>');   
    			});  

        		$("#result2").html(header+myTracking);
        		
        		
        		if(status == "????????????????????????" || "??????????????????" || "????????????"){		// ???????????? API ??????
					
        			var email = "<%=email%>";
        			var myKey = "<SWEET TRACKER API KEY>"; 
        			var t_code = $('#tekbeCompnayList option:selected').attr('value');
					var t_invoice = $('#invoiceNumberText').val();
					emailjs.send('gmail', 'template_jvhoqrg', {
						message : status,
						email : email,
					});
				
					
					
        			$.ajax({
                        type:"GET",
                        dataType : "json",
                        url:"http://info.sweettracker.co.kr/api/v1/trackingInfo?t_key="+myKey+"&t_code="+t_code+"&t_invoice="+t_invoice,
                        success:function(data){
                        	console.log(data);
                        	var myInvoiceData = "";
                        	if(data.status == false){
                        		myInvoiceData += ('<p>'+data.msg+'<p>');
                        	}else{
        	            		/* myInvoiceData += ('<tr>');            	
        	            		myInvoiceData += ('<th>'+"???????????????"+'</td>');     				
        	            		myInvoiceData += ('<th>'+data.senderName+'</td>');     				
        	            		myInvoiceData += ('</tr>'); */     
        	            		myInvoiceData += ('<tr>');            	
        	            		myInvoiceData += ('<th>'+"????????????"+'</td>');     				
        	            		myInvoiceData += ('<th>'+data.itemName+'</td>');     				
        	            		myInvoiceData += ('</tr>');     
        	            		myInvoiceData += ('<tr>');            	
        	            		myInvoiceData += ('<th>'+"????????????"+'</td>');     				
        	            		myInvoiceData += ('<th>'+data.invoiceNo+'</td>');     				
        	            		myInvoiceData += ('</tr>');     
        	            		myInvoiceData += ('<tr>');            	
        	            		/* myInvoiceData += ('<th>'+"????????????"+'</td>');     				
        	            		myInvoiceData += ('<th>'+data.receiverAddr+'</td>');     				
        	            		myInvoiceData += ('</tr>'); */           	                		
                        	}
                			
                        	
                        	$("#myPtag").html(myInvoiceData)
                        	
                        	var trackingDetails = data.trackingDetails;
                        	
                        	
                    		var myTracking="";
                    		var header ="";
                    		header += ('<tr>');            	
                    		header += ('<th>'+"??????"+'</th>');
                    		header += ('<th>'+"??????"+'</th>');
                    		header += ('<th>'+"??????"+'</th>');
                    		header += ('<th>'+"????????????"+'</th>');     				
                			header += ('</tr>');     
                    		
                    		$.each(trackingDetails,function(key,value) {
        	            		myTracking += ('<tr>');            	
                    			myTracking += ('<td>'+value.timeString+'</td>');
                    			myTracking += ('<td>'+value.where+'</td>');
                    			myTracking += ('<td>'+value.kind+'</td>');
                    			myTracking += ('<td>'+value.telno+'</td>');     				
        	            		myTracking += ('</tr>');        			            	
                    		});
                    		
                    		$("#myPtag2").html(header+myTracking);
                    		
                        	
                        }
                    });
        		}    
    		
        	}
        });
	});
});
	
	


</script>

<body>
	<span id="tekbeCompnayName">??????????????? : </span>
	<select id="tekbeCompnayList" name="tekbeCompnayList"></select><br/><br/>
	
	<div id="btn">
	<span id="invoiceNumber">??????????????? : </span>
	<input type="text" id="invoiceNumberText" name="invoiceNumberText">
	
		<button type="button" id="myButton1">???????????? </button>
	</div>
<br/>
<br/>
	<div>
		<table id="result1"></table>
	</div>
	
	<div>
		<table id="result2"></table>
	</div>
	
	<br/>
	<br/>
	<br/>
	<br/>
	
	<div>
		<p><b>?????? ?????? ??????</b></p>
		<table id="myPtag"></table>
	</div>
	<div>
		<table id="myPtag2"></table>
	</div>
<br/>
</body>
</html>
