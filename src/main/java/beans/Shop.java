//  自分が格納されているフォルダ名
package beans;

public class Shop {

    // 属性
    private String shopName = null; // 書籍名
    private String shopNickname = null; // 著者名
    private String shopEva = null; // 出版社名

    // 初期値を引数に持ったコンストラクタ
    public Shop(String shopName, String shopNickname, String shopEva) {

        this.shopName = shopName;
        this.shopNickname = shopNickname;
        this.shopEva = shopEva;

    }

    // 初期値を引数に持たないコンストラクタ
    // Java beansは初期値を持たないコンストラクタが必ず必要
    public Shop() {
    }

    // setメソッド
    // Java beansのsetメソッドはsetの後ろに続く文字列が必ず大文字であること
    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public void setShopNickname(String shopNickname) {
        this.shopNickname = shopNickname;
    }

    public void setShopEva(String shopEva) {
        this.shopEva = shopEva;
    }

    // getメソッド
    // Java beansのgetメソッドはgetの後ろに続く文字列が必ず大文字であること
    public String getShopName() {
        return this.shopName;
    }

    public String getShopNickname() {
        return this.shopNickname;
    }

    public String getShopEva() {
        return this.shopEva;
    }

}
