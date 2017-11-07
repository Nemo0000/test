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
		//将参数转型
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		//有3个路劲不需要判断，将他们排除
		String[] paths = new String[]{
				"/tologin.do","/createimg.do","/login.do"
		};
		String sp = request.getServletPath();
		for(String path : paths){
			//当前路径时三者之一
			if(path.equals(sp)){
				//让请求继续执行，无需判断是否登录
				chain.doFilter(request, response);
				return;
			}
			}		
		//判断用户是否登录
		HttpSession session = request.getSession();
		String user = (String)session.getAttribute("user");
		if(user == null){
			//未登录，要重定向到登录页面
			response.sendRedirect(request.getContextPath()+"/tologin.do");
					//动态获取项目名，这里写绝对路径
		}else{
			//已登录，请求继续执行
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
