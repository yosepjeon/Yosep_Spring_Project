package yosep.com.main.board.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
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
				"select bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent from mvc_board order by bGroup desc, bStep asc",
				this.boardContentMapper);
	}

	public void modify(final String bId, final String bName, final String bTitle, final String bContent) {
		this.jdbcTemplate.update("update mvc_board set bName = ?, bTitle = ?, bContent = ? where bId = ?",
				new PreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						// TODO Auto-generated method stub
						ps.setString(1, bName);
						ps.setString(2, bTitle);
						ps.setString(3, bContent);
						ps.setInt(4, Integer.parseInt(bId));
					}

				});
	}

	public void delete(final String bId) {
		this.jdbcTemplate.update("delete from mvc_board where bId = ?", new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, bId);
			}

		});
	}

	public void write(final String bName, final String bTitle, final String bContent) {
		/*
		 * List<BDto>dtos =
		 * jdbcTemplate.query("select max(bId) as maxId from mvc_board", new
		 * RowMapper<BDto>() {
		 * 
		 * @Override public BDto mapRow(ResultSet rs, int rowNumb) throws SQLException {
		 * // TODO Auto-generated method stub BDto dto = new BDto();
		 * dto.setbId(rs.getInt("bId")); return dto; }
		 * 
		 * }); BDto dto = dtos.get(0);
		 */
		int bid = jdbcTemplate.queryForInt("select max(bId) as maxId from mvc_board");
		jdbcTemplate.update(
				"insert into mvc_board (bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent) values (?,?,?,now(),0,? ,0,0)",
				bName, bTitle, bContent, bid);
	}

	public BDto contentView(String strId) {
		upHit(strId);
		return this.jdbcTemplate.queryForObject("select * from mvc_board where bId = ?", new Object[] { strId },
				new RowMapper<BDto>() {

					@Override
					public BDto mapRow(ResultSet rs, int arg1) throws SQLException {
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
				});
	}
	
	public BDto modifyView(String strId) {
		return this.jdbcTemplate.queryForObject("select * from mvc_board where bId = ?", new Object[] { strId },
				new RowMapper<BDto>() {

					@Override
					public BDto mapRow(ResultSet rs, int arg1) throws SQLException {
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
				});
	}
	
	private void upHit(final String bId) {
		jdbcTemplate.update("update mvc_board set bHit = bHit + 1 where bId = ?", new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1, Integer.parseInt(bId));
			}

		});
	}
}
