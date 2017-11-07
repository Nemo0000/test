package web;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest req
			, ServletResponse res
			, FilterChain chain)
			throws IOException, ServletException {
		//������ת��
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		//��3��·������Ҫ�жϣ��������ų�
		String[] paths = new String[]{
				"/tologin.do","/createimg.do","/login.do"
		};
		String sp = request.getServletPath();
		for(String path : paths){
			//��ǰ·��ʱ����֮һ
			if(path.equals(sp)){
				//���������ִ�У������ж��Ƿ��¼
				chain.doFilter(request, response);
				return;
			}
			}		
		//�ж��û��Ƿ��¼
		HttpSession session = request.getSession();
		String user = (String)session.getAttribute("user");
		if(user == null){
			//δ��¼��Ҫ�ض��򵽵�¼ҳ��
			response.sendRedirect(request.getContextPath()+"/tologin.do");
					//��̬��ȡ��Ŀ��������д����·��
		}else{
			//�ѵ�¼���������ִ��
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
