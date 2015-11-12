#Struts 2 sitemesh tutorial

# Struts 2 sitemesh tutorial #

Sitemesh is a web layout framework for java. It is somewhat similar to tiles. Sitemesh uses decorator pattern to decorate the output page. In a typical webapp you will create a number of JSP pages and then ask sitemesh to attache a header, naviagation area, footer and title etc to all the JSP pages.

### web.xml ###
```

<?xml version="1.0" encoding="UTF-8"?>
<web-app id="WebApp_9" version="2.4" xmlns="http://java.sun.com/xml/ns/j2ee"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://java.sun.com/xml/ns/j2ee http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd">

	<display-name>Struts Blank</display-name>

	<filter>
		<filter-name>sitemesh</filter-name>
		<filter-class>com.opensymphony.sitemesh.webapp.SiteMeshFilter</filter-class>
	</filter>


	<filter-mapping>
		<filter-name>sitemesh</filter-name>
		<url-pattern>/*</url-pattern>
	</filter-mapping>
	

	<filter>
		<filter-name>struts2</filter-name>
		<filter-class>org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter</filter-class>
	</filter>

	<filter-mapping>
		<filter-name>struts2</filter-name>
		<url-pattern>/*</url-pattern>
	</filter-mapping>

	
	<listener>
		<listener-class>org.apache.struts2.dispatcher.ng.listener.StrutsListener</listener-class>
	</listener>


	<welcome-file-list>
		<welcome-file>index.html</welcome-file>
	</welcome-file-list>

</web-app>
```