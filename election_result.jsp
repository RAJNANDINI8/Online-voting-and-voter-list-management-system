<%@page import="java.sql.*"%>
<%@page import="com.db.*"%>
<%@page import="java.util.*"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>EVote</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}

body {
	display: inline block;
	justify-content: top;
	align-items: center;
	min-height: 100vh;
	background:
		url(https://us.123rf.com/450wm/foxindustry/foxindustry1309/foxindustry130900013/22089109-blue-sky-abstract-background-vector-illustration.jpg)no-repeat;
	background-size: cover;
	background-position: center;
}

table {
	border-collapse: collapse;
	width: 400px;
	top: 260px;
	position: absolute;
	left: 55%;
	background: transparent;
	border: 2px solid rgba(255, 255, 255, .5);
	/* border-radius: 20px; */
	backdrop-filter: blur(20px);
	box-shadow: 0 0 30px rgba(0, 0, 0, .5);
}

th, td {
	top: 200px;
	text-align: left;
	padding: 18px;
}

th {
	background-color: #f3ecec;
}

h1 {
	position: absolute;
	top: 70px;
	color: #00628a ;
     
	left: 42%;
	font-size:71px;
}

#myChart {
	position: absolute;
	top: 208px;
	left:25px;
	max-width: 600px; /* reduce the max-width */
	height: 100px; /* increase the height for better visibility */
}
element.style {
    width: 539px;
    height: 512px;
    box-sizing: border-box;
    display: block;
}
header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 20px 100px;
  
    display:flex;
    justify-content: space-between;
    align-items: center;
    z-index:99 ;
  }
  .logo{
    font-size: 2em;
    color: white;
    user-select: none;

  }
  .navigation a{
    position: relative;
    font-size: 1.1em;
    color: #0c0c0c;
    text-decoration: none;
    font-weight: 500;
    margin-left: 40px;
  }
  .navigation a::after{
    content: '';
    position: absolute;
    left: 0;
    bottom: -6px;
    width: 100%;
    height: 3px;
    background: rgb(21, 20, 20);
    border-radius: 5px;
    transform-origin: right;
    transform: scaleX(0);
    transition: transform  0.5s;
  }

  .navigation a:hover::after{
transform-origin: left;
transform: scaleX(1);
}
  .navigation .btnLogin-popup{
    width: 110px;
    height: 40px;
  
    background: transparent;
    border: 2px solid  black;;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    color: black;
 font-weight: 500;
 margin-left: 40px;
 transition:  .5s;
  }
  .navigation .btnLogin-popup:hover{
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
</style>
</head>
<body>
<header>
    <h2 class="Logo">Evote</h2>
    <nav class="navigation">
      <button class="btnLogin-popup" onclick="window.location.href = 'AdmincheckList.jsp';">Back</button>
     <button class="btnLogin-popup" onclick="window.location.href = 'voterlogin.jsp';">Home</button>
    </nav>
  </header>
	<h1>RESULT</h1>
	<table>
		<tr>
			<th>PARTY NAME</th>
			<th>VOTES</th>
		</tr>
		<%
		Connection conn = null;
		Statement stmt = null;
		Blob image = null;
		ResultSet rs = null;
		ArrayList<String> partyNames = new ArrayList<String>();
		ArrayList<Integer> votes = new ArrayList<Integer>();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/Online_Voting_System", "root", "Utkarsha@06");
			stmt = conn.createStatement();
			String q = "SELECT * FROM party_votes";
			rs = stmt.executeQuery(q);

			while (rs.next()) {
				partyNames.add(rs.getString(1));
				votes.add(rs.getInt(2));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		for (int i = 0; i < partyNames.size(); i++) {
			System.out.println(partyNames.get(i));
			System.out.println(votes.get(i));
		}
		%>
		<%
		for (int i = 0; i < partyNames.size(); i++) {
		%>
		<tr>
			<td><%=partyNames.get(i)%></td>
			<td><%=votes.get(i)%></td>
		</tr>
		<%
		}
		%>
	</table>

	<canvas id="myChart"
		style="width: 501px; max-height: 508px; box-sizing: border-box; display: block;"
		width="600" height="600"></canvas>
</body>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
	const partyNames =
<%=new Gson().toJson(partyNames)%>
	;
	const votes =
<%=new Gson().toJson(votes)%>
	;

	var colors = [];
	for (var i = 0; i < partyNames.length; i++) {
		colors.push(getRandomColor());
	}

	function getRandomColor() {
		var letters = "0123456789ABCDEF";
		var color = "#";
		for (var i = 0; i < 6; i++) {
			color += letters[Math.floor(Math.random() * 16)];
		}
		return color;
	}
	new Chart("myChart", {
		type : "pie",
		data : {
			labels : partyNames,
			datasets : [ {
				backgroundColor : colors,
				data : votes
			} ]
		},
		options : {
			plugins : {
				labels : {
					render : function(args) {
						return args.value + "%";
					},
					position : 'outside',
					fontColor : '#000',
					textMargin : 10,
					fontSize : 14,
					fontWeight : 'bold'
				}
			},
			title : {
				display : true,
				text : "Election Results 2023"
			}
		}
	});
</script>
</html>