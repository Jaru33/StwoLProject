package spms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import spms.dto.BoardDto;

public class BoardDao {

	private Connection connection;

	public void setConnection(Connection conn) {
		this.connection = conn;
	}


}
