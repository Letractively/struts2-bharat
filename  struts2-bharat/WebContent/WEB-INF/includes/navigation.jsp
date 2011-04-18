<%@ taglib prefix="s" uri="/struts-tags" %>

<s:url action="home" namespace="/" var="homeTabUrl"></s:url>
<s:url action="register" namespace="/college" var="collegeRegisterTabUrl"></s:url>

<div class="Menu">
<ul>
	<li><a class="ActiveMenuButton" href="${homeTabUrl}"><span>Home</span></a></li>
	<li>|</li>
	<li><a class="MenuButton" href="${collegeRegisterTabUrl}"><span>College Registration</span></a></li>
	<li>|</li>
	<li><a class="MenuButton" href="#"><span>Archive</span></a></li>
	<li>|</li>
	<li><a class="MenuButton" href="#"><span>About</span></a></li>
</ul>
</div>