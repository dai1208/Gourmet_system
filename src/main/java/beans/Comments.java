//  自分が格納されているフォルダ名
package beans;

public class Comments {

    // 属性

    private String coMment = null; // 出版社名

    // 初期値を引数に持ったコンストラクタ
    public Comments(String coMment) {

        this.coMment = coMment;

    }

    // 初期値を引数に持たないコンストラクタ
    // Java beansは初期値を持たないコンストラクタが必ず必要
    public Comments() {
    }

    // setメソッド
    // Java beansのsetメソッドはsetの後ろに続く文字列が必ず大文字であること
    public void setCoMemnt(String coMment) {
        this.coMment = coMment;
    }


    // getメソッド
    // Java beansのgetメソッドはgetの後ろに続く文字列が必ず大文字であること
    public String getCoMment() {
        return this.coMment;
    }


}
