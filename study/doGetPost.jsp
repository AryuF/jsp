<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>doGet</title>
<link rel="stylesheet" type="text/css" href="css/study.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>


<div class="card mx-auto" style="max-width: 60rem;">
  <div class="card-header">
   doGetとdoPostのメソッド
  </div>
  <div class="card-body" >
  	<section class="accordion">
		<input id="block-01" type="checkbox" class="toggle">
		<label class="Label" for="block-01">HttpServletRequestインタフェースの主なメソッド</label>
		<div class="content">
			〇String <a class="font">getParameter</a> (String name) :リクエストパラメータを取得する<br>
			<p>→getParameter:引数に指定した名前のリクエストパラメータを取得する。指定した名前が存在しない場合はnullを返す。<br>
			   　例）String user = request.getParameter("user");<br>
			   →getParameterValues:引数に指定した名前のリクエストパラメータに、複数の値がある場合は、このメソッドを使用する。戻り値は配列。<br>
			   →getParameterNames:リクエストパラメータの名前の一覧を取得する。<br>
			   　例）List＜string＞ names = Collection.list(request.getParameterNames());<br>
			</p>

			〇void <a class="font">setCharacterEncoding</a> (String env) :リクエストパラメータを取得する際の文字エンコーディングを指定する<br>
			<p>→リクエストパラメータを取得する前、getParameterメソッドそ使用する前に呼び出す必要がある<br>
			   　例）request.setCharacterEncoding("UTF-8");<br>
			</p>

			〇Object <a class="font">getAttribute</a>(String name) :指定した名前の属性を取得する<br>
			<p>→指定した名前の属性から、データ(オブジェクト)を取得する。指定した属性名が存在しない場合はnullを返す<br>
			   　例）Integer count=(Integer)request.getAttribute("変数")<br>
			</p>

			〇void <a class="font">setAttribute</a>(String name,Object o) :指定した名前の属性を保存する<br>
			<p>→指定した名前の属性に、データ(オブジェクト)を設定する<br>
			   　例）request.setAttribute("属性",データ)属性にデータを格納<br>
			</p>

			〇HttpSession <a class="font">getSession</a>() :セッションを取得または、作成する<br>
			<p>→セッションIDを生成して新しいセッションを開始し、開始されている場合は、既存のインスタンスを取得する<br>
			   　例）HttpSession session = request.getSession();<br>
			 </p>

			〇Cookie[] <a class="font">getCokkies</a>() :クッキーの一覧を取得する<br>
			<p>→リクエストに含まれる全てのクッキーを取得する。getNameメソッドとgetValueメソッドを使用し、名前と値を取得する。<br>
			</p>

		</div>
		<input id="block-02" type="checkbox" class="toggle">
		<label class="Label" for="block-02">HttpServletResponseインタフェースの主なメソッド</label>
		<div class="content">
			〇PrintWritter <a class="font">getWritter</a>() :レスポンスの出力ストリームを取得する<br>
			<p>例）PrintWriter out = response.getWriter();→レスポンスを出力するために生成<br>
			   　　out.println("");→レスポンスとして出力<br>
			</p>

			〇void <a class="font">setContentType</a>(String type) :レスポンスの文字エンコーディングとMIMEタイプを指定する<br>
			<p>例）response.setContentType("text/plain; charset=UTF-8")→charset=UTF-8の部分に、文字エンコーディングを指定する<br>
			</p>

			〇void<a class="font"> addCookie</a>(Cookie cookie) :レスポンスにクッキーを追加する<br>
			<p>→引数で指定した名前のクッキーをレスポンスに追加する<br>
			   例）response.addCookie(cookie)→レスポンスのメッセージヘッダに追加する。<br>
			</p>
		</div>

	<form  method="get" action="./DoGetPost">
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