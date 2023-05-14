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
        <p class="fs-2">データベース２のテスト</p>
      </div>

      <% String errorMessage =(String)request.getAttribute("errorMessage"); %>
      <% if(errorMessage!=null){ %>
      <font color="red"><%= errorMessage %></font>
      <% } %>
      <div class="card-body">
        <form method="post" action="./DatabaseTest">
          <div>
            <p class="fs-5">
              1,データベースの接続を行うのに使用する、３つのオブジェクトを答えよ
            </p>

            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault1"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault1"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault1"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault1"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
          </div>
          <br />
          <div>
            <p class="fs-5">
              2,SQL文を実行するに使用するインタフェースは何か
            </p>
            <input
              class="form-check-input"
              type="radio"
              name="q2"
              id="flexRadioDefault2"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              </label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q2"
              id="flexRadioDefault2"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q2"
              id="flexRadioDefault2"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q2"
              id="flexRadioDefault2"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
          </div>
          <br />
          <div>
            <p class="fs-5">
              3,結果の取得と必要な処理の実行に使用するオブジェクトは何か
            </p>
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault3"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              >/label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault3"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault3"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault3"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
          </div>
          <br />
          <div>
            <p class="fs-5">
              4,データベースの内容を変更するのに使用するメソッドは何か
            </p>
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault4"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault4"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault4"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault4"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
          </div>
          <br />
          <div>
            <p class="fs-5">
              5,他のトランザクションによる更新について、コミット済みのデータのみを取得するトランザクション分離レベルは何か
            </p>
            <input
              class="form-check-input"
              type="radio"
              name="q5"
              id="flexRadioDefault1"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q5"
              id="flexRadioDefault2"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q5"
              id="flexRadioDefault2"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
            <input
              class="form-check-input"
              type="radio"
              name="q5"
              id="flexRadioDefault2"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"
              ></label
            >
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
