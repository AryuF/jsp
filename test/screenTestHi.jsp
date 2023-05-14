<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>screen</title>
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
        <p class="fs-2">画面遷移のテスト</p>
      </div>

      <% String errorMessage =(String)request.getAttribute("errorMessage"); %>
      <% if(errorMessage!=null){ %>
      <font color="red"><%= errorMessage %></font>
      <% } %>

      <div class="card-body">
        <form method="post" action="./ScreenTest">
          <div>
            <p class="fs-5">
              1,あるサーブレットやJSPから、他のサーブレットやJSPに処理を移行する機能は何か
            </p>

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
              id="flexRadioDefault2"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault2"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
          </div>
          <br />
          <div>
            <p class="fs-5">
              2,インクルードから見た、フォワードとの決定的な違いは何か
            </p>
            <input
              class="form-check-input"
              type="radio"
              name="q2"
              id="flexRadioDefault1"
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
            <p class="fs-5">3,フォワードに使用するメソッドを書け</p>
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault1"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault2"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault2"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q3"
              id="flexRadioDefault2"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
          </div>
          <br />
          <div>
            <p class="fs-5">
              4,最初に指定したURLとは別のURLのブラウザに誘導することを何というか
            </p>
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault1"
              value="1"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault2"
              value="2"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault2"
              value="3"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
            <input
              class="form-check-input"
              type="radio"
              name="q4"
              id="flexRadioDefault2"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
          </div>
          <br />
          <div>
            <p class="fs-5">
              5,サーブレットのリダイレクト機能のステータスコードは何か
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
