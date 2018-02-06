import static org.junit.Assert.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;

import com.book.dao.UserInfoIml;
import com.book.dao.UserInfoInt;
import com.book.pojo.UserInfo;
import com.book.servlet.RegServlet;


public class TestRegServlet extends Mockito{

	@Before
	public void setUp() throws Exception {
		MockitoAnnotations.initMocks(this);
	}

	@Test
	public void testDoPostHttpServletRequestHttpServletResponse() throws ServletException, IOException {
		HttpServletRequest request = mock(HttpServletRequest.class);
		HttpServletResponse response = mock(HttpServletResponse.class);
		HttpSession session = mock(HttpSession.class);
		when(request.getParameter("fname")).thenReturn("Monank");
        when(request.getParameter("lname")).thenReturn("Patel");
        when(request.getParameter("address")).thenReturn("VanRipen Ave");
        when(request.getParameter("mobileno")).thenReturn("5512632457");
        when(request.getParameter("emailid")).thenReturn("Monank_89@hotmail.com");
        when(request.getParameter("username")).thenReturn("Patel99");
        when(request.getParameter("password")).thenReturn("Monank89999");
        when(request.getParameter("usertype")).thenReturn("User");
        when(request.getSession()).thenReturn(session);
    	RegServlet ob=new RegServlet();
		ob.doPost(request, response);
		verify(response).sendRedirect("Login.jsp");
		
		
	}

}
