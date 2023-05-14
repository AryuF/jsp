<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database2</title>
</head>
<body>

<div class="card mx-auto" style="max-width: 60rem;">
  <div class="card-header">
   Javaとデータベースの連携２
  </div>
  <div class="card-body" >
  	<section class="accordion">
		<input id="block-01" type="checkbox" class="toggle">
		<label class="Label" for="block-01">データベースのアクセスの手順</label>
		<div class="content">
			１，データベースの接続<br>
			<p>
			(1)InitialContextオブジェクトを生成する<br>
			→データソースを取得するには、<font color=red>JNDI</font>という仕組みを使う。JNDIはデータやオブジェクトを名前で参照するためのAPI。<br>
			(2)DataSourceオブジェクトを取得する<br>
			→lookupメソッドを使って、データソースを取得する<br>
			(3)Connectionオブジェクトを取得する<br>
			→DataSourceインタフェースのgetConnectionメソッドを使って、Connectionオブジェクトを取得する。<br>
			</p>

			２，SQL文の作成と実行<br>
			<p>
			→SQL文の作成と実行には、PreparedStatementインタフェースを使う<br>
			・PreparedStatement<font color=red>prepareStatement</font>(String sql) :SQL文をDBに送るためのオブジェクトを生成<br>
			・ResultSet <font color=red>executeQuery</font>() :SQL文を実行し、結果をオブジェクトとして返す。<br>
			</p>

			３，結果の取得と必要な処理の実行<br>
			<p>
			→ResultSetの中身を取り出すにはカーソルという仕組みを使う。<br>
			</p>

			４，データベースからの切断<br>
			<p>
			→DBから切断するには、以下のオブジェクトに対してcloseメソッドを呼び出す<br>
			・ResultSet<br>
			・PreparedStatement<br>
			・Connection<br>
			</p>
		</div>

		<input id="block-02" type="checkbox" class="toggle">
		<label class="Label" for="block-02">データベースの内容を変更する処理</label>
		<div class="content">
			〇int<a class="font">executeUpdate</a>() :PreparedStatementオブジェクトの、データを変更するSQL文(insert,update,deleteなど)を実行する<br>
			<p>→executeUpdateメソッドで処理した結果を確認したい場合は、戻り値を使用する。<br>
			   →executeUpdateメソッドは、発行したSQL文により変更された行数を返す。<br>
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