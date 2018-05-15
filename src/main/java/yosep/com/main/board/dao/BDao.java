package yosep.com.main.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import yosep.com.main.board.dto.BDto;

public class BDao {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplate;
	private RowMapper<BDto> boardContentMapper = new RowMapper<BDto>() {

		@Override
		public BDto mapRow(ResultSet rs, int rowNum) throws SQLException {
			// TODO Auto-generated method stub
			BDto dto = new BDto();
			dto.setbId(rs.getInt("bId"));
			dto.setbName(rs.getString("bName"));
			dto.setbTitle(rs.getString("bTitle"));
			dto.setbContent(rs.getString("bContent"));
			dto.setbDate(rs.getTimestamp("bDate"));
			dto.setbHit(rs.getInt("bHit"));
			dto.setbGroup(rs.getInt("bGroup"));
			dto.setbStep(rs.getInt("bStep"));
			dto.setbIndent(rs.getInt("bIndent"));
			return dto;
		}
	};

	public BDao() {
		
	}

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public ArrayList<BDto> list() {
		return (ArrayList<BDto>) jdbcTemplate.query(
				"select bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent from mvc_board order by bGroup desc, bStep asc",this.boardContentMapper);
	}
}
