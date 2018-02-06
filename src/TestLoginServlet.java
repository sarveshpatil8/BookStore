import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;

import com.book.servlet.LoginServlet;

public class TestLoginServlet  extends Mockito{
	
	@Before
	public void setUp() throws Exception {
		MockitoAnnotations.initMocks(this);
	}

	@Test
	public void testDoPostUser() throws ServletException, IOException {
		HttpServletRequest request = mock(HttpServletRequest.class);
		HttpServletResponse response = mock(HttpServletResponse.class);
		HttpSession session = mock(HttpSession.class);
        when(request.getParameter("username")).thenReturn("test");
        when(request.getParameter("password")).thenReturn("123");
        when(request.getSession()).thenReturn(session);
        LoginServlet loginServlet = new LoginServlet();
        loginServlet.doPost(request, response);
        verify(session).setAttribute("user", "test");
        verify(response).sendRedirect("DisplayServlet");
        
	}
	
	@Test
	public void testDoPostAdmin() throws ServletException, IOException {
		HttpServletRequest request = mock(HttpServletRequest.class);
		HttpServletResponse response = mock(HttpServletResponse.class);
        HttpSession session = mock(HttpSession.class);
        when(request.getParameter("username")).thenReturn("pradyumn");
        when(request.getParameter("password")).thenReturn("1234poL");
        when(request.getSession()).thenReturn(session);
        LoginServlet loginServlet = new LoginServlet();
        loginServlet.doPost(request, response);
        verify(session).setAttribute("user", "pradyumn");
        verify(response).sendRedirect("AdminPage.jsp");
        
	}
	
	@Test
	public void testDoPostLoginFail() throws ServletException, IOException {
		HttpServletRequest request = mock(HttpServletRequest.class);
		HttpServletResponse response = mock(HttpServletResponse.class);
        HttpSession session = mock(HttpSession.class);
        when(request.getParameter("username")).thenReturn("hiralp009");
        when(request.getParameter("password")).thenReturn("abc");
        when(request.getSession()).thenReturn(session);
        LoginServlet loginServlet = new LoginServlet();
        loginServlet.doPost(request, response);
        verify(response).sendRedirect("Login.jsp?message=invalid");
        
	}

}
