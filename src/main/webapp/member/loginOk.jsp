<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.ict.home.MemberDAO" %>
<%@ page import="com.ict.home.MemberVO2" %>
<%
    String userid = request.getParameter("userid");
    String userpwd = request.getParameter("userpwd");
    MemberDAO dao = new MemberDAO();
    MemberVO2 vo = dao.loginSelect(userid,userpwd);
    if(vo.getUserid() != null && vo.getUsername() != null) {
        session.setAttribute("logId", vo.getUserid());
        session.setAttribute("username", vo.getUsername());
        session.setAttribute("logStatus", "y");

        response.sendRedirect(request.getContextPath()+"/");
    } else {
        response.sendRedirect(request.getContextPath()+"/member/login.jsp");
    }
%>