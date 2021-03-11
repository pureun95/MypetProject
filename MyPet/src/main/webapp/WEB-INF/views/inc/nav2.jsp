<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- 여기 건드리시면 template nav2.css도 같이 아이콘 수정 부탁드려요 -->
    <div class="nav2">
        <ul class="menu">
            <li>
                <div class="memu-img" id="img-first"></div>
                마이페이지1
            </li>
            <li>
                <div class="memu-img" id="img-second"></div>
                허니펫활동
            </li>
            <li>
                <div class="memu-img" id="img-third"></div>
                입양하기
            </li>
            <li>
                <div class="memu-img" id="img-fourth"></div>
                입양후기
            </li>
            <li>
                <div class="memu-img" id="img-fifth"></div>
                보호소찾기
            </li>
        </ul>
    </div>















<script>
	$("#plist_bar2").click(function() {
		console.log(123);
		if ($("#plist_bar2").prop("checked")) {
			$("html").scrollTop(0);
			$(".nav2").css("opacity", 1).css("z-index", "99");
		} else {
			$(".nav2").css("opacity", 0).css("z-index", "-1");
		}
	});
</script>
