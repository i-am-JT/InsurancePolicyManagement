package JDBC.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Prem_name {
	public  String p_name(int pol_no) {
		String name = null;
		String sql1 = "select p_name from policy where pol_no=?";
		try {
			Connection conn = new Connect().myDBConnect();
			PreparedStatement stmt1 = conn.prepareStatement(sql1);
			stmt1.setInt(1, pol_no);
			ResultSet rs1 = stmt1.executeQuery();
			rs1.next();
			name= rs1.getString("p_name");
			//System.out.println("Date:"+p_date);
			//return p_date;
		} catch (Exception e) {
			System.out.println(e);
		}
		return name;
	}
	
	/*public static void main(String args[])
	{
		Date d=new prem_date().due_date(1,897456123);
		System.out.println("Key="+d);
	}*/
	
}