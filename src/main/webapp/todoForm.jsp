<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>나의 해야할 일들</title>
    <link rel="stylesheet" type="text/css" href="todoForm.css?after"/>
</head>

<body>

<header><h1 class="title">할 일 등록</h1></header>

<section>
    <div id ="wrap">
        <form name="input" action="/main.jsp" method="post" class="form-example">
            <div class="form-example">
                <label for="title"> <span class='question-text'>어떤 일 인가요?</span></label> <br>
                <input id="title" name="title" type="text" maxlength="24" Placeholder="ex)swift공부하기(24자까지)" required/>
            </div>

            <div class="form-example">
                <label for="name"><span class=question-text>누가 할 일 인가요?</span></label><br>
                <input id="name" name="name" type="text" Placeholder="ex)정재빈" required/>
            </div>

            <div class="form-example">
                <span span class=question-text>우선 순위를 선택해주세요.</span> <br>
                <input type="radio" name="sequence" value="1순위" checked="checked"><span>1순위</span>
                <input type="radio" name="sequence" value="2순위"><span>2순위</span>
                <input type="radio" name="sequence" value="3순위"><span>3순위</span>
            </div>

            <div class="form-example">
                <input type="button" id="back-button" value="<이전" />
                <input type="submit" value="제출" class="submit">
                <input type="reset" value="초기화" class="clear">

            </div>
        </form>
    </div>
</section>
</body>

<script>
    var back = document.querySelector("#back-button");
    back.addEventListener("click", function() {
        location.href = "/main";
    });
</script>

</html>
