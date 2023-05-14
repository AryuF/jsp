<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>database test</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="card mx-auto" style="max-width: 60rem;">
		<div class="card-header">
		<p class="fs-2">データベースのテスト</p>
		</div>

		<% String errorMessage =(String)request.getAttribute("errorMessage"); %>
		<% if(errorMessage!=null){ %>
		<font color="red"><%= errorMessage %></font>
		<% } %>
		<div class="card-body">
			<form method="post" action="./DatabaseTest">
				<div>

					<p class="fs-5">1,Javaからデータベースを操作するためのAPIはどれか</p>

					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">JABC</label>
					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault1" value=2>
						<label class="form-check-label" for="flexRadioDefault1">JBBC</label>
					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault1" value=3>
						<label class="form-check-label" for="flexRadioDefault1">JCBC</label>
					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault1" value=4>
						<label class="form-check-label" for="flexRadioDefault1">JDBC</label>

				</div>
				<br>
				<div>
					<p class="fs-5">2,データベース間の違いを吸収するものは何か</p>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=1>
						<label class="form-check-label" for="flexRadioDefault1">JDBCスタブ</label>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">JDBCドライバ</label>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">JDBCサーブレット</label>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">JDBCアプレット</label>
				</div>
				<br>
				<div>
					<p class="fs-5">3,パラメータ付きのSQLを発行するためのインタフェース</p>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault3" value=1>
						<label class="form-check-label" for="flexRadioDefault1">Statement</label>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault3" value=2>
						<label class="form-check-label" for="flexRadioDefault1">PreparedStatement</label>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault3" value=3>
						<label class="form-check-label" for="flexRadioDefault1">DriverManager</label>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault3" value=4>
						<label class="form-check-label" for="flexRadioDefault1">Connection</label>
				</div>
				<br>
				<div>
					<p class="fs-5">4,クエリ(select文による検索)の結果を保持するクラスは何か</p>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault4" value=1>
						<label class="form-check-label" for="flexRadioDefault1">Result</label>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault4" value=2>
						<label class="form-check-label" for="flexRadioDefault1">ResultGet</label>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault4" value=3>
						<label class="form-check-label" for="flexRadioDefault1">ResultSet</label>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault4" value=4>
						<label class="form-check-label" for="flexRadioDefault1">resultAll</label>
				</div>
				<br>
				<div>
					<p class="fs-5">5,アプリケーションサーバを利用してデータベースに接続する仕組み</p>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">データソース</label>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">ソースデータ</label>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">ストレージソース</label>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">ソースストレージ</label>
				</div>
				<br>
				<div>
					<button type="submit" class="btn btn-outline-primary">回答する</button>
				</div>
			</form>
		</div>

	</div>

</body>
</html>