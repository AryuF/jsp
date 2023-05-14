<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>HighTest</title>
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
        <p class="fs-2">doGetとdoPostのメソッドのテスト</p>
      </div>

      <% String errorMessage =(String)request.getAttribute("errorMessage"); %>
      <% if(errorMessage!=null){ %>
      <font color="red"><%= errorMessage %></font>
      <% } %>
      <div class="card-body">
        <form method="post" action="./DoGetPostTest">
          <div>
            <p class="fs-5">1,リクエストパラメータを取得するメソッドを書け</p>

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
            <input
              class="form-check-input"
              type="radio"
              name="q1"
              id="flexRadioDefault2"
              value="4"
            />
            <label class="form-check-label" for="flexRadioDefault1"></label>
          </div>
          <br />
          <div>
            <p class="fs-5">2,指定した名前の属性を取得するメソッドを書け</p>
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
            <p class="fs-5">3,指定した名前の属性を保存するメソッドを書け</p>
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
            <p class="fs-5">4,セッションを取得または、作成するメソッドを書け</p>
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
              5,HttpServletResponseインタフェースの主なメソッドを一つ書け
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
