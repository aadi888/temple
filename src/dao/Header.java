package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBConnection;
import bean.HeaderBean;
import bean.TrusteeNameBean;

public class Header {

	
	Connection conn=null;
	  
	  public List<HeaderBean> getData()
	  {
		  
		   List<HeaderBean> list=new ArrayList<HeaderBean>();
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="select * from photoheader";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			
			ResultSet rs=pstmt.executeQuery();
			while (rs.next()) {
				HeaderBean bean=new HeaderBean();
				bean.setHeaderid(rs.getString("headerid"));
				bean.setHeader(rs.getString("header"));
				
				
				list.add(bean);
				
			}
			return list;
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return list;
		  
	  }
	  
	  public List<TrusteeNameBean> getTData()
	  {
		  
		   List<TrusteeNameBean> list=new ArrayList<TrusteeNameBean>();
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="select * from trusteedata";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			
			ResultSet rs=pstmt.executeQuery();
			while (rs.next()) {
				TrusteeNameBean bean=new TrusteeNameBean();
				bean.setTid(rs.getString("tid"));
				bean.setTname(rs.getString("tname"));
				bean.setTposition(rs.getString("tposition"));
				
				list.add(bean);
				
			}
			return list;
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return list;
		  
	  } 
	
	  
	  public boolean addHeader(String header)
	  {
		  boolean headerFlag=false;
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="update photoheader set header=? where headerid=?";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			 pstmt.setString(1, header);
			 pstmt.setInt(2, 1);
			 int a=pstmt.executeUpdate();
			 if(a!=0)
			 {
				 headerFlag=true;
				 
			 }
			
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return headerFlag;
		  
	  }
	  
	  
	  
	  public boolean changeAdminData(TrusteeNameBean bean)
	  {
		  boolean tFlag=false;
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="update trusteedata set tname=?,tposition=? where tid=?";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			 pstmt.setString(1,bean.getTname());
			 pstmt.setString(2,bean.getTposition());
			 pstmt.setString(3,bean.getTid());
			 
			 int a=pstmt.executeUpdate();
			 if(a!=0)
			 {
				 tFlag=true;
				 
			 }
			
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return tFlag;
		  
	  }
}
