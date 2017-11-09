package com.model;
import java.sql.*;

import com.db.Provider;
import com.db.Question;

public class QuestionDao {

	public static int save(Question q) {
		int status = 0;
		try
		{
			Connection con = Provider.getConnection();
			String sql = "insert into questions(test,subject,question,opt1,opt2,opt3,opt4,ans) values(?,?,?,?,?,?,?,?)";
			
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setString(1, q.getTest());
			pst.setString(2, q.getSubject());
			pst.setString(3, q.getQuestion());
			pst.setString(4, q.getOpt1());
			pst.setString(5, q.getOpt2());
			pst.setString(6, q.getOpt3());
			pst.setString(7, q.getOpt4());
			pst.setString(8, q.getAns());
			
			status = pst.executeUpdate();
			
			con.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

}
