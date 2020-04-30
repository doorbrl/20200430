package sample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class sqlInsert {

	public static void main(String[] args) {

		/*
		 * Insert文を実行する
		 */

		try {
			Class.forName(PropertyUtil.getProperty("className"));

			//MySQLに接続するための情報をプロパティファイルから取得
			String driver = PropertyUtil.getProperty("driver");
			String user = PropertyUtil.getProperty("user");
			String password = PropertyUtil.getProperty("password");

			//取得した情報をもとにMySQLへ接続処理
			Connection conn = DriverManager.getConnection(driver,user,password);

			Statement st = conn.createStatement();
			if(st != null) {
				System.out.println("接続完了");
			}

			//UPDATE文を取得、実行
			String update = PropertyUtil.getProperty("insert");

			PreparedStatement ps = conn.prepareStatement(update);

			ps.setInt(1, 12);
			ps.setString(2, "神谷しおん");
			ps.setString(3, "1月11日");
			ps.setString(4, "0");
			ps.setString(5, "0");
			ps.setString(6, "FUTURING GIRL");
			ps.setString(7, "0");

			//INSERT文を実行する
			int i = ps.executeUpdate();

			//処理件数を表示する
			System.out.println("結果：" + i);

			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (ClassNotFoundException e) {
			System.out.println("ドライバを読み込めませんでした "+ e);
		} catch (SQLException e) {
			System.out.println("データベース接続エラー"+ e);
		}
	}


}

