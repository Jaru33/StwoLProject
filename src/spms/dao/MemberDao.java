package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import spms.dto.MemberDto;

public class MemberDao {
	
	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
		
	}
	
	public List<MemberDto> selectList() throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		sql = "SELECT MNO, MID, MNAME, EMAIL, PWD, CRE_DATE";
		sql += " FROM MEMBERS";
		sql += " ORDER BY MNO DESC";
	
		pstmt = connection.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		ArrayList<MemberDto> memberList = new ArrayList<MemberDto>();
		
			int no = 0;
			String name = "";
			String id = "";
			String email = "";
			String password = "";
			String phoneNum = "";
			Date creDate = null;
			
			try {
				while(rs.next()) {
					
					no = rs.getInt("MNO");
					id = rs.getString("MID");
					name = rs.getString("MNAME");
					password = rs.getString("PWD");
					email = rs.getString("EMAIL");
					creDate = rs.getDate("CRE_DATE");
					
					MemberDto memberDto = new MemberDto(name, id
								, password, phoneNum, email);
					
					memberList.add(memberDto);
							
				}
				return memberList;
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				throw e;
				
			}finally { // 6.자원 연결 해제(메모리 회수)
				if(rs != null) {
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				if(pstmt != null) {
					try{
						pstmt.close();
					} catch(SQLException e) {
						e.printStackTrace();
					}
				}
			}//finally end
			
		}// 회원 목록 public list end
		
		//회원 등록
	
	public int memberInsert(MemberDto memberDto) throws Exception{
		int resultNum = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String name = memberDto.getName();
			String id = memberDto.getId();
			String pwd = memberDto.getPassword();
			String phoneNum = memberDto.getPhoneNumber();
			String email = memberDto.getEmail();
			
			
			
			String sql = "";

			sql += "INSERT INTO MEMBERS";
			sql += "(MNO, MID, ENAME, PWD, PHONENUM, EMAIL, CRE_DATE)";
			sql += "VALUES(MEMBERS_MNO_SEQ.NEXTVAL, ?, ?, ?";
			sql += ", SYSDATE, SYSDATE)";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, pwd);
			pstmt.setString(4, phoneNum);
			pstmt.setString(5, email);
			
			resultNum = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
			
		}finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}// pstmt if end
			
		}// finally end
		
		return resultNum;
	}
	
}
