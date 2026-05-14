package fees;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Registration() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("jjjjjjjjjjjjjjjjjjj");
		String name= request.getParameter("uid");
		String fnm = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String mobile = request.getParameter("mobile");
		
		System.out.println("jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj"+name);
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			//System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhh");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "feepayment", "feepayment");
			PreparedStatement ps = con.prepareStatement("insert into registration values(?,?,?,?,?,?)");
			
			ps.setString(1, name);
			ps.setString(2, fnm);
			ps.setString(3, lname);
			ps.setString(4, email);
			ps.setString(5, pwd);
			 ps.setString(6, mobile);
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				System.out.println("connected to database");
				RequestDispatcher  rd= request.getRequestDispatcher("index.html");
				rd.forward(request, response);
				//RequestDispatcher rd = ps.r
			}
			else {
				RequestDispatcher  rd= request.getRequestDispatcher("index.html");
				rd.forward(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
			
		
	}

}
