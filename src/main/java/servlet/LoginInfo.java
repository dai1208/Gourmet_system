//--------------------------------
// SearchInfo.java
//--------------------------------
//　自分が格納されているフォルダ名
package servlet;

//自分が格納されているフォルダの外にある必要なクラス

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Student;
import control.StudentManager;

@WebServlet("/LoginInfo")
// HttpServletを継承することで、このクラスはServletとして、働くことができる
public class LoginInfo extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // requestオブジェクトの文字エンコーディングの設定
        request.setCharacterEncoding("UTF-8");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/searchStudent.jsp");
        dispatcher.forward(request, response);
    }

    // requestオブジェクトには、フォームで入力された文字列などが格納されている。
    // responseオブジェクトを使って、次のページを表示する
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // requestオブジェクトの文字エンコーディングの設定
        request.setCharacterEncoding("UTF-8");

        // requestオブジェクトから登録情報の取り出し
        String stu_id = request.getParameter("stu_id");
        String stu_password = request.getParameter("stu_password");

        String stu_name = null;

        // studentのオブジェクトに情報を格納
        Student student = new Student(stu_id, stu_name, stu_password);

        // StudentManagerオブジェクトの生成
        StudentManager manager = new StudentManager();

        // 学生の検索
        student = manager.LoginStudent(student);

        if(stu_password.equals(student.getStudentPassword())) {
        	HttpSession session = request.getSession();
            session.setAttribute("stu_id", stu_id);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Toppage.jsp");
            dispatcher.forward(request, response);
        }
        else {
        	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/re_searchStudent.jsp");
            dispatcher.forward(request, response);
        }

    }
}
