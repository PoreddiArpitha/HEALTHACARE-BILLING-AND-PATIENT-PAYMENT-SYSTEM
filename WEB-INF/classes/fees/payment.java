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

import lab.conn;

/**
 * Servlet implementation class payment
 */
public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment() {
        super();
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
		String cardtype= request.getParameter("cardtype");
		String cardnumber= request.getParameter("cardnumber");
		String cvvnumber = request.getParameter("cvvnumber");
		String studentmobile = request.getParameter("mobile");
	
		System.out.println("jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			//System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhh");
			Connection con=conn.myconn();
			PreparedStatement ps = con.prepareStatement("insert into payment values(?,?,?,?,?)");
			ps.setString(1, null);
			ps.setString(2, cardtype);
			ps.setString(3, cardnumber);
			ps.setString(4,studentmobile );
			ps.setString(5, cvvnumber);
		
			int i = ps.executeUpdate();
			if(i==1)
			{
				System.out.println("connected to database");
				RequestDispatcher  rd= request.getRequestDispatcher("paid.jsp");
				rd.forward(request, response);
				//RequestDispatcher rd = ps.r
			}
			
			else {
				
				RequestDispatcher  rd= request.getRequestDispatcher("payment.jsp");
				rd.forward(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
			

	}

}
