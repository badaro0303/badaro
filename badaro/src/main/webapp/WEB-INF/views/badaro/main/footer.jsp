<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <footer id="footer">
        <div class="footerIn">
            Footer
        </div>
    </footer><!--#footer-->
    </div>
    <script>
	    $(function(){
	        let duration = 300;  
	        let aside1= $('.gnb .aside');
	        let asideBtn = aside1.find('button');
	        asideBtn.on("click", function (){
	            aside1.toggleClass('open');
	
	            if(aside1.hasClass('open')){
	                aside1.stop(true).animate({
	                    left : 0
	                }, duration, "linear")
	                asideBtn.find("img").attr("src",'${pageContext.request.contextPath}/resources/img/btn_close.png');
	                
	                
	            } else {
	                aside1.stop(true).animate({
	                    left : "-300px"
	                },duration, "linear")
	                asideBtn.find("img").attr("src",'${pageContext.request.contextPath}/resources/img/btn_open.png');
	              
	            }
	        })
	    })
	
	    function board(){
	        document.getElementById("board_list_wrap").style.display="block";
	    }
    </script>
</body>
</html>