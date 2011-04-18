<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@page contentType="text/html; charset=UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>

<title>title | <decorator:title default="ci" /></title>
<style type="text/css">
@import url("../skins/skin.css");
@import url("../skins/style.css");
@import url("./skins/skin.css");
@import url("./skins/style.css");
</style>

<decorator:head />
</head>

<body>
<div class="BodyContent">
<div class="BorderBorder">
<div class="BorderBL">
<div></div>
</div>
<div class="BorderBR">
<div></div>
</div>
<div class="BorderTL"></div>
<div class="BorderTR">
<div></div>
</div>
<div class="BorderT"></div>
<div class="BorderR">
<div></div>
</div>
<div class="BorderB">
<div></div>
</div>
<div class="BorderL"></div>
<div class="BorderC"></div>
<div class="Border"><%@ include file="../includes/header.jsp"%>

<%@ include file="../includes/navigation.jsp"%>

<div class="Columns"><%@ include file="../includes/columnLeft.jsp"%>
<%@ include file="../includes/columnRight.jsp"%>
<div class="MainColumn">
<div class="ArticleBorder">
<div class="ArticleBL">
<div></div>
</div>
<div class="ArticleBR">
<div></div>
</div>
<div class="ArticleTL"></div>
<div class="ArticleTR">
<div></div>
</div>
<div class="ArticleT"></div>
<div class="ArticleR">
<div></div>
</div>
<div class="ArticleB">
<div></div>
</div>
<div class="ArticleL"></div>
<div class="ArticleC"></div>
<div class="Article">
<%--Main content area..--%>
<decorator:body />
</div>
</div>

<%-- Main column Lower block --%>

<div class="ArticleBorder">
<div class="ArticleBL">
<div></div>
</div>
<div class="ArticleBR">
<div></div>
</div>
<div class="ArticleTL"></div>
<div class="ArticleTR">
<div></div>
</div>
<div class="ArticleT"></div>
<div class="ArticleR">
<div></div>
</div>
<div class="ArticleB">
<div></div>
</div>
<div class="ArticleL"></div>
<div class="ArticleC"></div>
<div class="Article">

<h2><a href="#"><%-- Advertisements to be put here --%></a></h2>

</div>
</div>
</div>

</div>
<%@ include file="../includes/pagefooter.jsp"%>
</div>
</div>
</div>
<span class="BackLink"><a href="http://vowconsultancy.com">Find
best college</a> asdf</span>

<%--
<table id="page-container" cellpadding="0" cellspacing="0" border="0"
	align="center" >
	<tr>
		<td colspan="3" id="page-header"><%@ include
			file="../includes/header.jsp"%></td>
	</tr>
	<tr>
		<td id="nav-container" colspan="3"><%@ include
			file="..//includes/navigation.jsp"%></td>
	</tr>
	<tr>
		<td id="left-container"><%@ include
			file="..//includes/navigationLeft.jsp"%></td>
		<td id="content-container"><decorator:body /></td>
		<td id="right-container">asdf</td>
	</tr>
	<tr>
		<td colspan="3" id="page-footer"><%@ include
			file="..//includes/pagefooter.jsp"%></td>
	</tr>
</table>
<table align="center">
	<tr>
		<td style="font-size: small;" align="center"><br />
		copyright &copy; notice to come here</td>
	</tr>
</table>
 --%>
</body>
</html>