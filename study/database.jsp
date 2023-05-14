<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database</title>
<link rel="stylesheet" type="text/css" href="css/study.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="card mx-auto" style="max-width: 60rem;">
  <div class="card-header">
   Javaとデータベースの連携
  </div>
  <div class="card-body" >
  	<section class="accordion">
		<input id="block-01" type="checkbox" class="toggle">
		<label class="Label" for="block-01">JDBC</label>
		<div class="content">
			〇<a class="font">JDBCとは</a> :Javaからデータベースを操作するためのAPI。JDBCを使うと、JavaプログラムからRDBMSにSQL文を発行して、結果を取得できる<br>
			<p>→JDBCの特徴：データベース間の違いを吸収してくれること。<br>
			JDBCは、Javaプログラムから利用できるJDBC APIと、<font color="red">JDBCドライバ</font>と呼ばれるソフトウェアから構成されている。<br>
			JDBC API:サーブレット/JSPなどのJavaプログラムからは、JDBC APIを操作する。JDBCドライバに操作を伝達する。<br>
			JDBC ドライバ:データベース間の違いを吸収する。<br>
			</p>
		</div>

		<input id="block-02" type="checkbox" class="toggle">
		<label class="Label" for="block-02">JDBCに含まれる主なクラス</label>
		<div class="content">
			〇<a class="font">DriverManager</a> :JDBCを管理するためのクラス<br>

			〇<a class="font">Connection</a> :データベースとの接続を表すインタフェース<br>
			<p>→JDBCを使ってデータベースを操作する場合は、まず最初にデータベースに接続するためにインスタンスを取得する。<br>
			   例）Connection conn = DriverManager.getConnection("接続文字列","ユーザ名","パスワード");<br>
			   →JDBCのクラス名や接続情報をプログラムソースの中に記述しなければならない。<br>
			</p>

			〇<a class="font">Statement</a> :SQLを発行するためのインタフェース<br>

			〇<a class="font">PreparedStatement</a> :パラメータ付きのSQLを発行するためのインタフェース<br>
			<p>例）PreparedStatement st = con.prepareStatement("select * from product");<br>
			   →SQL文を実行するためのPreparedStatementオブジェクトを取得している<br>
			</p>

			〇<a class="font">ResultSet</a> :クエリ(select文による検索)の結果を保持するクラス<br>
			<p>例）ResultSet rs=st.executeQuery();<br>
			   →作成したSQL文は、executeQueryメソッドで実行し、結果をResultSetオブジェクトそして取得する<br>
			</p>
		</div>

		<input id="block-03" type="checkbox" class="toggle">
		<label class="Label" for="block-03">データソース</label>
		<div class="content">
			〇<a class="font">データソースとは</a> :アプリケーションサーバを利用してデータベースに接続する仕組み<br>
			<p>・データソースの利点<br>
				→接続情報の管理を容易にする<br>
				→接続を再利用して性能を向上する：コネクションプールという機能によって、データベースへの接続を再利用することにより、性能を向上することができる<br>
			</p>
		</div>

		<input id="block-04" type="checkbox" class="toggle">
		<label class="Label" for="block-04">コネクションプール</label>
		<div class="content">
			〇<a class="font">コネクションプールとは</a> :プログラムを実行するたびに、接続や切断を行うことは、実行速度を低下させる可能性があることを解決すること<br>
			→コネクションプールは、Javaプログラムとデータベースの間にあるもの
		</div>

	<form  method="get" action="./Database">
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