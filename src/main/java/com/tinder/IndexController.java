package com.tinder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

import static java.lang.System.out;


@WebServlet(name = "IndexController", urlPatterns = {"/index"})
public class IndexController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String email = request.getParameter("inputEmail");
            String password = request.getParameter("inputPassword");
            if (email != null && password != null) {
                if (Objects.equals(email, "admin@gmail.com") && password.equals("12345")) {
                    response.sendRedirect("like-page.jsp");
                } else {
                    out.println("entered username or password is wrong");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        out.println("in do post");

        try {
            String email = request.getParameter("inputEmail");
            String password = request.getParameter("inputPassword");
            if (Objects.equals(email, "admin@gmail.com") & password.equals("12345")) {
                response.sendRedirect("like-page.jsp");
            } else {
                out.println("entered username or password is wrong");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}