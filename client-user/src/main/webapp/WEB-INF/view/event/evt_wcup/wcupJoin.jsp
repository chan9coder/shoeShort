<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<style>
div {
    display: inline-block;
    width: 1300px;
    height: 400px;
    line-height: 100px;
    text-align: left;
    font-size: 20px;
}
ul {
  list-style-type: none;
}

li {
  display: inline-block;
}

input[type="checkbox"][id^="pic"] {
  display: none;
}

label {
  border: 1px solid #fff;
  padding: 10px;
  display: block;
  position: relative;
  margin: 10px;
  cursor: pointer;
}

label:before {
  background-color: white;
  color: white;
  content: " ";
  display: block;
  border-radius: 50%;
  border: 1px solid grey;
  position: absolute;
  top: -5px;
  left: -5px;
  width: 25px;
  height: 25px;
  text-align: center;
  line-height: 28px;
  transition-duration: 0.4s;
  transform: scale(0);
}

label img {
  height: 100px;
  width: 100px;
  transition-duration: 0.2s;
  transform-origin: 50% 50%;
}

:checked + label {
  border-color: #ddd;
}

:checked + label:before {
  content: "✓";
  background-color: grey;
  transform: scale(1);
}

:checked + label img {
  transform: scale(0.9);
  /* box-shadow: 0 0 5px #333; */
  z-index: -1;
}
</style>
<script>
function checkOnlyOne(element) {
		  const checkboxes = document.getElementsByName("chk");
	  checkboxes.forEach((cb) => {
		    cb.checked = false;
	  });  
	  element.checked = true;
	}

</script>
<br>
<h2>스타일 월드컵 지원하기</h2>

<form name="frm" action="wcupVol" method="POST" >
<input type="hidden" name="ewidx" value="${ewidx}" />
<hr>
<div>
<ul>
<c:forEach items="${styleList }" var="si" varStatus="i">
  <li>
    <input type="checkbox" id="pic${i.count}" name="chk" value="${si.getSi_idx() }" onclick='checkOnlyOne(this)'/>
    <label for="pic${i.count}" onclick="if(navigator.appVersion.indexOf('MSIE') != -1){pic${i.count}".click()}"><img src="resources/img/style_img/${si.getSi_img()}"  style="width:300px; height:400px;"/></label>
  </li>
 </c:forEach>
</ul>
 
<hr>
<div style="margin-left:45%;">
<input type="submit" class="btn btn-secondary" value="지원하기" />&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" class="btn btn-light" value="취소하기" onclick="window.close();" />
</div>
</div>
</form>
