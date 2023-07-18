package com.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(filterName = "LoginFilter")
public class LoginFilter implements Filter {
    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        HttpSession session = request.getSession();
        Object object = session.getAttribute("currentUser");
        String path = request.getServletPath();
        if(object == null&&path.indexOf("login")<0&&path.indexOf("bootstrap")<0&&path.indexOf("images")<0&&path.indexOf("js")<0) {
            response.sendRedirect("login.jsp");
        }else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }
    @Override
    public void init(FilterConfig config) throws ServletException {

    }

}
