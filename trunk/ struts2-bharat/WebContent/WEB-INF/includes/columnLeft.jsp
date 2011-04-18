<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="Column1">
<div class="BlockBorder">
<div class="BlockBL">
<div></div>
</div>
<div class="BlockBR">
<div></div>
</div>
<div class="BlockTL"></div>
<div class="BlockTR">
<div></div>
</div>
<div class="BlockT"></div>
<div class="BlockR">
<div></div>
</div>
<div class="BlockB">
<div></div>
</div>
<div class="BlockL"></div>
<div class="BlockC"></div>
<div class="Block"><span class="BlockHeader"><span>Search
This Site</span></span>
<div class="BlockContentBorder"><input type="text"
	style="width: 120px;"> <span class="ButtonInput"><span><input
	type="button" value="Search"></span></span></div>

</div>
</div>


<div class="BlockBorder">
<div class="BlockBL">
<div></div>
</div>
<div class="BlockBR">
<div></div>
</div>
<div class="BlockTL"></div>
<div class="BlockTR">
<div></div>
</div>
<div class="BlockT"></div>
<div class="BlockR">
<div></div>
</div>
<div class="BlockB">
<div></div>
</div>
<div class="BlockL"></div>
<div class="BlockC"></div>
<div class="Block"><span class="BlockHeader"><span>Links</span></span>
<div class="BlockContentBorder">

<s:url action="home" namespace="/" var="homeUrl"></s:url>
<s:url action="register" namespace="/college" var="collegeRegisterUrl"></s:url>
<s:url action="aboutus" namespace="/" var="aboutusUrl"></s:url>

<ul>
	<li><a href="${collegeRegisterUrl}">Client Registration</a></li>
	<li><a href="${homeUrl}">Home Page</a></li>
	<li><a href="#">Registration Page</a></li>
	<li><a href="${aboutusUrl}">About Us</a></li>
	<li><a href="#">Test Link 5</a></li>
</ul>

</div>

</div>
</div>

</div>
