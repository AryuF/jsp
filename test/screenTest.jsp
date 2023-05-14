<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>screen</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="card mx-auto" style="max-width: 60rem;">
		<div class="card-header">
		<p class="fs-2">画面遷移のテスト</p>
		</div>

		<% String errorMessage =(String)request.getAttribute("errorMessage"); %>
		<% if(errorMessage!=null){ %>
		<font color="red"><%= errorMessage %></font>
		<% } %>

		<div class="card-body">
			<form method="post" action="./ScreenTest">
				<div>

					<p class="fs-5">1,呼び出されたサーブレット/JSPの処理が終わると、呼び出し元に処理が戻るのはどれか</p>

					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">フォワード</label>
					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">インクルード</label>
					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">リダイレクト</label>
				</div>
				<br>
				<div>
					<p class="fs-5">2,サーブレットのリダイレクトのステータスコードはどれか</p>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">301</label>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">302</label>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">401</label>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">402</label>
				</div>
				<br>
				<div>
					<p class="fs-5">3,フォワードに使用するメソッドはどれか</p>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">getAttribute</label>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">getParameter</label>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">getForward</label>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">forward</label>
				</div>
				<br>
				<div>
					<p class="fs-5">4,includeメソッドの引数はどれか</p>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">void</label>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">Integer</label>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">String</label>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">Object</label>
				</div>
				<br>
				<div>
					<p class="fs-5">5,リダイレクトに使用するメソッドはどれか</p>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">getRedirect</label>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">setRedirect</label>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">sendRedirect</label>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">redirect</label>
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