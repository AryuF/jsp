<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>doGetPostのテスト</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="card mx-auto" style="max-width: 60rem;">
		<div class="card-header">
		<p class="fs-2">doGetとdoPostのメソッドのテスト</p>
		</div>

		<% String errorMessage =(String)request.getAttribute("errorMessage"); %>
		<% if(errorMessage!=null){ %>
		<font color="red"><%= errorMessage %></font>
		<% } %>
		<div class="card-body">
			<form method="post" action="./DoGetPostTest">
				<div>

					<p class="fs-5">1,HttpServletRequestインタフェースのメソッド<font color="red">ではないもの</font>はどれか</p>

					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">setCharacterEncoding</label>
					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">setAttribute</label>
					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">getCokkies</label>
					<input class="form-check-input" type="radio" name="q1"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">setContentType</label>

				</div>
				<br>
				<div>
					<p class="fs-5">2,リクエストパラメータを取得するメソッドはなにか</p>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">getAttribute</label>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">getParameter</label>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">getWritter</label>
					<input class="form-check-input" type="radio" name="q2"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">getSession</label>
				</div>
				<br>
				<div>
					<p class="fs-5">3,指定した名前の属性を取得するメソッドはなにか</p>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">getAttribute</label>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">getParameter</label>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">getWritter</label>
					<input class="form-check-input" type="radio" name="q3"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">getSession</label>
				</div>
				<br>
				<div>
					<p class="fs-5">4,指定した名前の属性を保存するメソッドはなにか</p>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">setAttribute</label>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">setParameter</label>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">setWritter</label>
					<input class="form-check-input" type="radio" name="q4"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">setSession</label>
				</div>
				<br>
				<div>
					<p class="fs-5">5,getParameterの戻り値は何か</p>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault1" value=1>
						<label class="form-check-label" for="flexRadioDefault1">void</label>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault2" value=2>
						<label class="form-check-label" for="flexRadioDefault1">String</label>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault2" value=3>
						<label class="form-check-label" for="flexRadioDefault1">Integer</label>
					<input class="form-check-input" type="radio" name="q5"id="flexRadioDefault2" value=4>
						<label class="form-check-label" for="flexRadioDefault1">Object</label>
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