//　自分が格納されているフォルダ名
package control;

//  自分が格納されているフォルダの外にある必要なクラス
import java.sql.Connection;

import beans.Comments;
import dao.CommentDAO;

public class CommentManager {

    // 属性
    private Connection connection = null;

    // 引数を持たないコンストラクタ
    public CommentManager() {
    }

    // 追加
    // 引数はStudentオブジェクト
    public void registComment(Comments comment) {

        // StudentDAOオブジェクト生成
        CommentDAO commentDAO = new CommentDAO();

        // DataBaseへ接続し、コネクションオブジェクトを生成する
        this.connection = commentDAO.createConnection();

        // StudentオブジェクトをDataBaseに登録する
        commentDAO.registComment(comment, this.connection);

        // DataBaseとの接続を切断する
        commentDAO.closeConnection(this.connection);

        // コネクションオブジェクトを破棄する
        this.connection = null;

    }

}
