package jp.pair;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.jdo.PersistenceManager;
import javax.jdo.PersistenceManagerFactory;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddUserDataServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
	 
    @Override
    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/plain");
        resp.getWriter().println("no url...");
    }
 
    @Override
    protected void doPost(HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("username");
        String id = req.getParameter("userid");
        String comment = null;
        Date date = Calendar.getInstance().getTime();
        UserData data = new UserData(name,id,comment,date);
        PersistenceManagerFactory factory = PMF.get();
        PersistenceManager manager = factory.getPersistenceManager();
        RequestDispatcher rd = null;
        try {
            manager.makePersistent(data);
    		rd = req.getRequestDispatcher("/add.jsp");
        } finally {
            req.setAttribute("username", name);
            req.setAttribute("userid", id);
            manager.close();
    		rd.forward(req, resp);
        }
        resp.sendRedirect("add.jsp");
    }
}