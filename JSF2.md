# JFS 2.x Tutorial #

# Introduction #

This is a JSF 2.x tutorial about setting up JSF to run on Tomcat 7.0 Servlet container
and eclipse.
You will require following to follow this tutorial.


  1. JSF 2.x implementation from https://javaserverfaces.dev.java.net/
  1. Tomcat 7.0/6.0 from http://tomcat.apache.org/
  1. Eclipse from http://eclipse.org (preferably Helios)


# Details #

This hello World application will pop up a login form asking for username and password, on pressing the submit button user will be greeted with the welcome message.

**web.xml** should look like this
```
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns="http://java.sun.com/xml/ns/javaee" xmlns:web="http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
	id="WebApp_ID" version="3.0">
	<display-name>jsf-test</display-name>
	<context-param>
		<param-name>javax.faces.PROJECT_STAGE</param-name>
		<param-value>Development</param-value>
	</context-param>

	<welcome-file-list>
		<welcome-file>index.jsf</welcome-file>
	</welcome-file-list>
	<servlet>
		<servlet-name>Faces Servlet</servlet-name>
		<servlet-class>javax.faces.webapp.FacesServlet</servlet-class>
		<load-on-startup>1</load-on-startup>
	</servlet>
	<servlet-mapping>
		<servlet-name>Faces Servlet</servlet-name>
		<url-pattern>/faces/*</url-pattern>
	</servlet-mapping>
	<context-param>
		<description>State saving method: 'client' or 'server' (=default). See JSF Specification 2.5.2</description>
		<param-name>javax.faces.STATE_SAVING_METHOD</param-name>
		<param-value>client</param-value>
	</context-param>
	<context-param>
		<param-name>javax.servlet.jsp.jstl.fmt.localizationContext</param-name>
		<param-value>resources.application</param-value>
	</context-param>
	<listener>
		<listener-class>com.sun.faces.config.ConfigureListener</listener-class>
	</listener>
	<servlet-mapping>
		<servlet-name>Faces Servlet</servlet-name>
		<url-pattern>*.jsf</url-pattern>
	</servlet-mapping>
	<servlet-mapping>
		<servlet-name>Faces Servlet</servlet-name>
		<url-pattern>*.faces</url-pattern>
	</servlet-mapping>
</web-app>
```

following setting in above web.xml file can be put to show helpful error and debug messages during development phase
```
	<context-param>
		<param-name>javax.faces.PROJECT_STAGE</param-name>
		<param-value>Development</param-value>
	</context-param>
```
The choices for the project stage are Development, UnitTest, SystemTest, and Production.

Apart from web.xml you need to have a **faces-config.xml** file which should look like the one below.
```
<?xml version="1.0"?>
<faces-config xmlns="http://java.sun.com/xml/ns/javaee"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee 
      http://java.sun.com/xml/ns/javaee/web-facesconfig_2_0.xsd"
	version="2.0">
	<!-- Empty for now. Your entries will go here. But even if you have no entries 
		in faces-config.xml, you are required to have a valid faces-config.xml file 
		with legal start and end tags. -->
</faces-config>
```


**index.xhtml** (page with login form) should look like this
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:h="http://java.sun.com/jsf/html">
<h:head>
	<title>Login page</title>
</h:head>
<h:body>
	<h:form>
		<h3>Please enter username and password</h3>
		<table>
			<tr>
				<td>Username:</td>
				<td><h:inputText value="#{user.name}"></h:inputText></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><h:inputSecret value="#{user.password}"></h:inputSecret></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td ><h:commandButton  value="Login" action="welcome"></h:commandButton></td>
			</tr>
		</table>
	</h:form>
</h:body>
</html>
```

**welcome.xhtml**
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:h="http://java.sun.com/jsf/html">
<h:head>
	<title>Welcome :)</title>
</h:head>
<h:body>
<h3>Welcome to the world of java server faces #{user.name}!</h3>
<br/>
the password you entered was <strong>#{user.password}</strong>.
</h:body>
</html>
```