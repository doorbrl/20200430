package sample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class sqlConnect {

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ
		try {
			Class.forName(PropertyUtil.getProperty("className"));

			//MySQLに接続するための情報をプロパティファイルから取得
			String driver = PropertyUtil.getProperty("driver");
			String user = PropertyUtil.getProperty("user");
			String password = PropertyUtil.getProperty("password");

			//取得した情報をもとにMySQLへ接続処理
			Connection conn = DriverManager.getConnection(driver,user,password);

			Statement st = conn.createStatement();
			Statement stForDA = conn.createStatement();
			if(st != null) {
				System.out.println("接続完了");
			}

			//SELECT文を取得、実行
			String select = PropertyUtil.getProperty("select_starlight");
			String selectDA = PropertyUtil.getProperty("select_dreamacademy");

			PreparedStatement ps = conn.prepareStatement(select);
			PreparedStatement psForDA = conn.prepareStatement(selectDA);

			System.out.println("---------------START-----------------");
			try(ResultSet rs = ps.executeQuery()){
				while (rs.next()) {
					System.out.println(
							"No." +rs.getInt("KEY_NO") + " " +
									"名前：" +rs.getString("name") + " " +
									"誕生日："+rs.getString("birthday")+ " "+
									"好きなブランド："+rs.getString("Brand"));
					if(rs.getString("Soleil").equals("1")) {
						System.out.println("ソレイユ：〇");
					}else {
						System.out.println("ソレイユ：-");
					}
					if(rs.getString("Luminas").equals("1")) {
						System.out.println("ルミナス;〇");
					}else {
						System.out.println("ルミナス：-");
					}
					if(rs.getString("STAR☆ANIS").equals("1")) {
						System.out.println("STAR☆ANIS ;〇");
					}else {
						System.out.println("STAR☆ANIS ：-");
					}
				}
			}
			System.out.println("---------------END-----------------");

			System.out.println("---------------ドリアカSTART-----------------");
			try(ResultSet rsDA = psForDA.executeQuery()){
				while (rsDA.next()) {
					System.out.println(
							"No." +rsDA.getInt("KEY_NO") + " " +
									"名前：" +rsDA.getString("name") + " " +
									"誕生日："+rsDA.getString("birthday")+ " "+
									"好きなブランド："+rsDA.getString("Brand"));
				}
			}

			System.out.println("---------------ドリアカEND-----------------");
		} catch (ClassNotFoundException e) {
			System.out.println("ドライバを読み込めませんでした "+ e);
		} catch (SQLException e) {
			System.out.println("データベース接続エラー"+ e);

		}


	}
}