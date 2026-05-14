package fees;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public login() {
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
		String Studentid= request.getParameter("studentid");
		String pwd = request.getParameter("Password");
		System.out.println("987654345678"+pwd);
		
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "feepayment", "feepayment");
			Statement s = con.createStatement();
			String query = "select ST_ID,ST_PWD from registration where ST_ID='"+Studentid+"' AND ST_PWD='"+pwd+"'";
			System.out.println("trdtyuiouytretyui"+query);
			ResultSet r=s.executeQuery(query);
			System.out.println("23456765432");
			while(r.next())
			{
				r.getString(1);
				System.out.println("llllllllllllllllll"+r.getString(1));
				r.getString("ST_PWD");
				RequestDispatcher rd=request.getRequestDispatcher("fee.html");
				rd.forward(request, response);
				
			
			}
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.forward(request, response); 
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
			
		
	}

}
