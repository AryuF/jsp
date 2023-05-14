<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>database test</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="card mx-auto" style="max-width: 60rem">
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
            <p class="fs-5">1,データベースとの接続を表すインタフェースは何か</p>

            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault1"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault1"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault1"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault1"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
          </div>
          <br />
          <div>
            <p class="fs-5">2,SQLを発行するためのインタフェースは何か</p>
            <input
              class="form-check-input"
              type="radio"
              name="q2"
              id="flexRadioDefault2"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q2"
              id="flexRadioDefault2"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q2"
              id="flexRadioDefault2"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q2"
              id="flexRadioDefault2"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
          </div>
          <br />
          <div>
            <p class="fs-5">
              3,パラメータ付きのSQLを発行するためのインタフェースは何か
            </p>
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault3"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault3"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault3"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault3"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
          </div>
          <br />
          <div>
            <p class="fs-5">
              4,クエリ(select文による検索)の結果を保持するクラスは何か
            </p>
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault4"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault4"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault4"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault4"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
          </div>
          <br />
          <div>
            <p class="fs-5">
              5,プログラムを実行するたびに、接続や切断を行うことは、実行速度を低下させる可能性があることを解決することは何か
            </p>
            <input
              class="form-check-input"
              type="radio"
              name="q5"
              id="flexRadioDefault1"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q5"
              id="flexRadioDefault2"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q5"
              id="flexRadioDefault2"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q5"
              id="flexRadioDefault2"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
          </div>
          <br />
          <div>
            <button type="submit" class="btn btn-outline-primary">
              回答する
            </button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
