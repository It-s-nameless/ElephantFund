package jdbc;

import static org.junit.Assert.*;

import java.math.BigDecimal;
import java.sql.SQLException;

import org.junit.Before;
import org.junit.Test;

public class WareServiceTest {
WareService ware = new WareService();
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testFindWareByUnameFnum1() throws SQLException {
		int wprice =  ware.findWareByUnameFnum1("abin", "090017");
		assertEquals(200,wprice);
	}

}
