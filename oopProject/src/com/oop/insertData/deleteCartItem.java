package com.oop.insertData;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.oop.dbconnect.connectDb;

/**
 * Servlet implementation class deleteCartItem
 */
@WebServlet("/deleteCartItem")
public class deleteCartItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteCartItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			connectDb db = new connectDb();
			HttpSession session =request.getSession();
			String uname=session.getAttribute("username").toString();
			String id=request.getParameter("u");
			int value=JOptionPane.showConfirmDialog(null, "Delete Item From Cart?");
			
			if(value==0) {
				db.st.executeUpdate("delete from cart where ItemID='"+id+"'and CustomerName='"+uname+"'");
				response.sendRedirect("addToCart.jsp");
			}
			else {
				response.sendRedirect("addToCart.jsp");
			}
			
			
			
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null, "Error "+e);
			response.sendRedirect("addToCart.jsp");
		}
		
		
		
		
		
		
		
		
		doGet(request, response);
	}

}
