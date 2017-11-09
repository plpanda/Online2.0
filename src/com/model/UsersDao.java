package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.db.Provider;
import com.db.Users;

public class UsersDao 
{

	public static int login(Users u) 
	{
		int status = 0;
		try
		{
			Connection con= Provider.getConnection();
			String sql="select * from users where sic=? and pswd=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, u.getSic());
			pst.setString(2, u.getPswd());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				String usertype = rs.getString("usertype");
				if(usertype.equals("student"))
					status = 1;
				else
					status = 2;
			}
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}

	public static int save(Users u) 
	{
		int status = 0;
		try
		{
			Connection con= Provider.getConnection();
			String sql="insert into users values(?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, u.getName());
			pst.setString(2, u.getSic());
			pst.setString(3, u.getPswd());
			pst.setString(4, u.getBranch());
			pst.setString(5, u.getUsertype());
			
			status = pst.executeUpdate();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}

	public static String getPassword(Users u) 
	{
		String password=null;
		try
		{
			Connection con= Provider.getConnection();
			String sql="select pswd from users where sic=? and name=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, u.getSic());
			pst.setString(2, u.getName());
						
			ResultSet rs = pst.executeQuery();
			if(rs.next())
				password=rs.getString(1);			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return password;
	}
}
