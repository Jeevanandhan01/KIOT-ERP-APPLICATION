package CONTROLLERS;

import DAO.USER_DAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        USER_DAO user_dao = new USER_DAO();
        if(user_dao.checkUser(username, password)) {
            String role = user_dao.getRole(username);
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            if(role.equals("Admin")) {
                System.out.println("Admin");
                response.sendRedirect("admin/admin_dashboard.jsp");
            }

        }
        else
        {
            response.sendRedirect("index.jsp");
        }


    }
}
