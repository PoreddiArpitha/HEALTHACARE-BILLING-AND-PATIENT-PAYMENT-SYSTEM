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
 * Servlet implementation class NewFee
 */
public class projectfee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public projectfee() {
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
		String st_id= request.getParameter("studentid");
		String st_name= request.getParameter("studentname");
		
		String pfee = request.getParameter("projectfee");
		
		System.out.println("jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj"+pfee);
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhh");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "feepayment", "feepayment");
			PreparedStatement ps = con.prepareStatement("insert into jntufee values(?,?,?)");
			
			ps.setString(1, st_id);
			ps.setString(2, st_name);
			
			ps.setString(3, pfee);
			
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				System.out.println("connected to database");
				RequestDispatcher rd = request.getRequestDispatcher("payment.html");
				rd.forward(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

}
