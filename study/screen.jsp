<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>doPost</title>
<link rel="stylesheet" type="text/css" href="css/study.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<div class="card mx-auto" style="max-width: 60rem;">
  <div class="card-header">
   いろいろな画面遷移
  </div>
  <div class="card-body" >
  	<section class="accordion">
		<input id="block-01" type="checkbox" class="toggle">
		<label class="Label" for="block-01">フォワード</label>
		<div class="content">
			<p>
			〇<a class="font">フォワードとは</a> :あるサーブレットやJSPから、他のサーブレットやJSPに処理を移行する機能<br>
			以下の組み合わせで、フォワードが可能<br>
			・サーブレット→サーブレット<br>
			・サーブレット→JSP<br>
			・JSP→サーブレット<br>
			・JSP→JSP<br>
			<br>
			※　フォワード先に処理が移った後は、フォワードもとには戻らない。
			</p>

			〇void <a class="font">forward</a>(ServletRequest request,ServletResponse response) :フォワードを行う<br>
			<p>→フォワード先の指定は、getRequestDispatcher　で行う。<br>
			   例）request.getRequestDispatcher("サーブレットやJSPのパス")<br>
			   　　　　　　　　　　.forward(request,response)→getRequestDispatcherでパスを指定。forwardにdoGetの引数を指定。<br>
			</p>
		</div>
		<input id="block-02" type="checkbox" class="toggle">
		<label class="Label" for="block-02">インクルード</label>
		<div class="content">
			<p>
				〇<a class="font">インクルードとは</a> :フォワードと同じく、他のサーブレットやJSPを呼び出す機能だが、<br>
				　　　　　　　　　　　　　　　　　　　　呼び出されたサーブレット/JSPの処理が終わると、呼び出し元に処理が戻る。<br>
				→フォワードと決定的な違いは、インクルードする側のサーブレット/JSPがレスポンスを出力すること<br>
			</p>

			〇void <a class="font">include</a>(ServletRequest request,ServletResponse response) :インクルードを行う<br>
			<p>→インクルード先の指定は、getRequestDispatcher　で行う。<br>
			   例）request.getRequestDispatcher("サーブレットやJSPのパス")<br>
			   　　　　　　　　　　.include(request,response)→getRequestDispatcherでパスを指定。forwardにdoGetの引数を指定。<br>
			</p>

		</div>
		<input id="block-03" type="checkbox" class="toggle">
		<label class="Label" for="block-03">リダイレクト</label>
		<div class="content">
			<p>
			〇 <a class="font">リダイレクトとは</a> :サーブレット/JSPがレスポンスを出力する代わりに、指定したWebページをブラウザに開かせる機能<br>
			→一般に、最初に指定したURLとは別のURLのブラウザに誘導することを、リダイレクトと呼ぶ。<br>
			</p>

			〇<a class="font">リダイレクトの仕組み</a><br>
			<p>→301(Moved Permanently) :Webサイトを引越しした時には、このステータスコードを使う<br>
			   →302(Found) :サーブレットのリダイレクト機能は、このステータスコードを使う<br>
			   <br>
			   リダイレクトは２往復の通信が必要になるため、フォワードとインクルードの方が効率のよい通信が行える。<br>
			   リダイレクトが役立つのは、サーブレット/JSPが動作しているアプリケーション内部のリソースではなく、外部のリソースを使うとき。<br>
			   フォワードやインクルードは外部のリソースを使用することができない。
			</p>

			〇void <a class="font">sendRedirect</a>(String location) :引数で指定したURLにリダイレクトする<br>
			<p>→sendRedirectメソッドの引数は、リダイレクト先のURL<br>
			   　例）response.sendRedirect("Http://tomcat.apache.org/")→リダイレクトを行う場合、サーブレット/JSPはレスポンスを出力してはいけない。<br>
			</p>
		</div>

		<form  method="get" action="./Screen">
		<p>
			<select class="form-select" style="max-width: 30rem;" name="test" >
				<option selected>テストを選択してください</option>
				<option value="low">初級テスト</option>
				<option value="hi">上級テスト</option>
			</select>
		</p>


		<div class="d-grid gap-2 col-6" style="max-width: 15rem;">
			<button type="submit" class="btn btn-outline-primary">テストをする</button>
			<a href="/servlet_study/HomePage" class="btn btn-secondary">ホームに戻る</a>
		</div>
	</form>
	</section>
  </div>
</div>

</body>
</html>