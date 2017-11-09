import java.io.IOException;
import java.io.PrintWriter;

 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.db.Question;
import com.model.QuestionDao;
@WebServlet("/SaveData")
public class SaveData extends HttpServlet
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
 {
     @SuppressWarnings("unused")
	PrintWriter out = res.getWriter();
     res.setContentType("text/html");
     
     String test = req.getParameter("test");
     String subject =req.getParameter("subject");
     String question = req.getParameter("question");
     String opt1 = req.getParameter("option1");
     String opt2 = req.getParameter("option2");
     String opt3 = req.getParameter("option3");
     String opt4 = req.getParameter("option4");
     String ans = "";
     switch(Integer.parseInt(req.getParameter("answer")))
     {
     case 1: ans=opt1;break;
     case 2: ans=opt2;break;
     case 3: ans=opt3;break;
     case 4: ans=opt4;break;
     }
     
     Question q = new Question();
     q.setSubject(subject);
     q.setTest(test);
     q.setQuestion(question);
     q.setOpt1(opt1);
     q.setOpt2(opt2);
     q.setOpt3(opt3);
     q.setOpt4(opt4);
     q.setAns(ans);
     
     int status=QuestionDao.save(q);
     if(status > 0)
     {
    	 req.setAttribute("alertMsg", "data add sucess");
    	 res.sendRedirect("question.jsp?msg=QUESTION_UPLOADED_SUCCESSFULLY&subject="+subject+"&test="+test);
     }
     else
    	 res.sendRedirect("question.jsp?msg =QUESTION_NOT_UPLOAD");
 
 }
 
}