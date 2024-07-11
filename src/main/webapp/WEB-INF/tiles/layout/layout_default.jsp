<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!-- @TODO cookie -->
<!DOCTYPE html>
<html>
    <head>
        <!-- CSS 모듈 -->
        <jsp:include page="/WEB-INF/jsp/include/cssInclude.jsp"/>
    </head>
    <body>
        <div>
            <!-- header -->
            <tiles:insertAttribute name="header"/>
           
            <!-- body -->
            <tiles:insertAttribute name="body"/>
            
            <!-- footer -->
            <tiles:insertAttribute name="footer"/>
          </div>
                  <!-- JAVASCRIPT 모듈 -->
        <jsp:include page="/WEB-INF/jsp/include/scriptInclude.jsp"/>
    </body>
</html>
