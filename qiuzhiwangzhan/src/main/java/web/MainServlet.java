package web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDaoJdbcImpl;
import dao.CostDaoJdbcImpl;
import entity.Admin;
import entity.Cost;
import entity.Ent;
import entity.Work;
	
public class MainServlet extends HttpServlet {
	protected void service(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html;charset=UTF-8");
		String path = req.getServletPath();
		System.out.println(path);
		if("/login.do".equals(path)){
			login(req,res);
		}else if("/toLogin.do".equals(path)){
			toLogin(req,res);
		}else if("/toIndex.do".equals(path)){
			toIndex(req,res);
		}else if("/toIndex2.do".equals(path)){
			toIndex2(req,res);
		}else if("/toSou.do".equals(path)){
			toSou(req,res);
		}else if("/toIndex3.do".equals(path)){
			toIndex3(req,res);
		}else if("/index3.do".equals(path)){
			index3(req,res);
		}else if("/index4.do".equals(path)){
			index4(req,res);
		}else if("/addAdmin1.do".equals(path)){
			addAdmin1(req,res);
		}else if("/addAdmin2.do".equals(path)){
			addAdmin2(req,res);
		}else if("/tocha.do".equals(path)){
			tocha(req,res);
		}else if("/index41.do".equals(path)){
			index41(req,res);
		}else if("/login1.do".equals(path)){
			login1(req,res);
		}else if("/index5.do".equals(path)){
			index5(req,res);
		}else if("/add1.do".equals(path)){
			add1(req,res);
		}else if("/toent.do".equals(path)){
			toEnt(req,res);
		}else if("/toent1.do".equals(path)){
			toEnt1(req,res);
		}else if("/toent2.do".equals(path)){
			toEnt2(req,res);
		}else if("/toxiu1.do".equals(path)){
			toXiu1(req,res);
		}else if("/toxiu2.do".equals(path)){
			toXiu2(req,res);
		}else if("/toxiu3.do".equals(path)){
			toXiu3(req,res);
		}else if("/toxiu4.do".equals(path)){
			toXiu4(req,res);
		}else if("/tocha01.do".equals(path)){
			toCha01(req,res);
		}else if("/toIndex6.do".equals(path)){
			toIndex6(req,res);
		}
		
		
		
		
		
	}
	
	//登录页面
	protected void toLogin(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {
		req.getRequestDispatcher("WEB-INF/main/login.jsp").forward(req, res);
	}
	//登录页面的注册功能
	protected void addAdmin1(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {
		System.out.println(1);
		
		req.setCharacterEncoding("utf-8");
		
		String u1 = req.getParameter("username2");
		String u2 = req.getParameter("password2");
		System.out.println(u1);
		System.out.println(u2);
		Admin admin = new Admin();
		if(u1!=null && u1.length()>0){
			admin.setUsername(u1);
		}
		if(u2!=null && u2.length()>0){
			admin.setPassword(u2);
		}
		AdminDaoJdbcImpl dao1 = new AdminDaoJdbcImpl();
		dao1.add1(admin);
		res.sendRedirect("index4.do");
	}
	
	
	//主页
		protected void toIndex(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.getRequestDispatcher("WEB-INF/main/index.jsp").forward(req, res);
		}
	//企业用户登录及注册
		protected void toIndex2(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.getRequestDispatcher("WEB-INF/main/index2.jsp").forward(req, res);
		}
	
	//职位详情页面
		protected void toIndex3(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			res.sendRedirect("index3.do");
		}
		protected void index3(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.getRequestDispatcher("WEB-INF/main/index3.jsp").forward(req, res);
		}
	//个人用户注册时的详细信息填写页面
		protected void index4(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.getRequestDispatcher("WEB-INF/main/index4.jsp").forward(req, res);
			System.out.println(2);
			
		}
	//个人用户注册时的详细信息添加功能
		protected void addAdmin2(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			req.setCharacterEncoding("utf-8");
			String age = req.getParameter("age");
			System.out.println(age);
			System.out.println(req.getParameter("birthday"));
			
			String birthday=req.getParameter("birthday");
			
			String edu = req.getParameter("edu");
			System.out.println(edu);
			String work = req.getParameter("work");
			System.out.println(work);
			String workto = req.getParameter("workto");
			System.out.println(workto);
			String workage = req.getParameter("workage");
			System.out.println(workage);
			String in = req.getParameter("in");
			System.out.println(in);
			Admin admin1 = new Admin();
			admin1.setBirthday(birthday);
			admin1.setEdu(edu);
			admin1.setWork(work);
			admin1.setWorkto(workto);
			admin1.setWorkage(workage);
			admin1.setIn(in);
			System.out.println(admin1.toString());
			AdminDaoJdbcImpl dao = new AdminDaoJdbcImpl();
			String u1 = req.getParameter("1");//获得首页用户注册时填写的用户名
			 dao.add2(admin1,u1);
			res.sendRedirect("toIndex.do"); 
		}
	//搜索职位页面
		protected void toSou(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			CostDaoJdbcImpl dao = new CostDaoJdbcImpl();
			List<Cost> list = dao.findAll();
			req.setAttribute("costs", list);
			req.getRequestDispatcher("WEB-INF/main/sou.jsp").forward(req, res);
		}
	//跳转到搜索结果页面的方法
		protected void tocha(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.setCharacterEncoding("utf-8");
			String comname = req.getParameter("comName");
			CostDaoJdbcImpl dao = new CostDaoJdbcImpl();
			List<Cost> list = dao.findAccount(comname);
			if(comname==null || comname==""){
				res.sendRedirect("toSou.do");
			}else{
				req.setAttribute("costs", list);
				req.getRequestDispatcher("WEB-INF/main/sou.jsp").forward(req, res);
			}
		}
	//工作详情页面的方法
		protected void index41(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			System.out.println("执行了");
			req.setCharacterEncoding("utf-8");
			String gn = req.getParameter("id");
			 
			System.out.println(gn);
			
			CostDaoJdbcImpl dao = new CostDaoJdbcImpl();
			Work work = dao.findByGname(gn);
			System.out.println(work);
			req.setAttribute("works", work);
			req.getRequestDispatcher("WEB-INF/main/index3.jsp").forward(req, res);
		}
		//登录页面的验证功能(此方法还要修改完善)
		protected void login(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			System.out.println(2);	
			req.setCharacterEncoding("utf-8");
			/*//将注册时用户填写的用户名及密码保存到对象中
			String u1 = req.getParameter("1");
			String p1 = req.getParameter("2");
			Admin admin = new Admin();
			if(u1!=null && u1.length()>0){
				admin.setUsername(u1);
			}
			if(p1!=null && p1.length()>0){
				admin.setPassword(p1);
			}
			AdminDaoJdbcImpl dao1 = new AdminDaoJdbcImpl();
			Admin a1 = dao1.add1(admin);*/
			//接收参数
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			System.out.println(username);
			System.out.println(password);
			//验证验证码
			
			//验证账号和密码
			AdminDaoJdbcImpl dao = new AdminDaoJdbcImpl();
			Admin a = dao.findByCode(username);
			if(a == null){  //如果账号不正确
				System.out.println("账号错误");
	 			req.setAttribute("error", "账号错误");
	 			req.getRequestDispatcher("WEB-INF/main/login.jsp").forward(req, res);
	 			res.sendRedirect("toLogin.do");
			}else if(!a.getPassword().equals(password)){  //如果密码不正确
				System.out.println("密码错误");
				req.setAttribute("error", "密码错误");
	 			req.getRequestDispatcher("WEB-INF/main/login.jsp").forward(req, res);
	 			res.sendRedirect("toLogin.do");
			}else{  //密码账号都正确
				HttpSession session = req.getSession();
				session.setAttribute("username",username);
				//将账号存入session
				System.out.println("输入正确");
				//重定向到主页
				res.sendRedirect("toIndex.do");
			}
		}
	//企业注册的查询并登录方法
		protected void login1(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			System.out.println("执行了");
			req.setCharacterEncoding("utf-8");
			String Ename = req.getParameter("Ename");
			String Epassword = req.getParameter("Epassword");
			AdminDaoJdbcImpl dao = new AdminDaoJdbcImpl();
			Ent ent = dao.findByEname(Ename);
			if(ent == null){  //如果账号不正确
				System.out.println("账号错误");
	 			req.setAttribute("error", "账号错误");
	 			req.getRequestDispatcher("WEB-INF/main/index2.jsp").forward(req, res);
			}else if(!ent.getEnt2().equals(Epassword)){  //如果密码不正确
				System.out.println("密码错误");
				req.setAttribute("error", "密码错误");
	 			req.getRequestDispatcher("WEB-INF/main/index2.jsp").forward(req, res);
			}else{  //密码账号都正确
				HttpSession session = req.getSession();
				session.setAttribute("Ent3",ent.getEnt3());
				//将账号存入session
				System.out.println("输入正确");
				//重定向到主页
				res.sendRedirect("index5.do");
			}
		}
		
		protected void index5(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			System.out.println("走到这了");
			req.getRequestDispatcher("WEB-INF/main/index5.jsp").forward(req, res);
		}
		
	//企业用户的注册功能
		protected void add1(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.setCharacterEncoding("utf-8");
			String Ent1 = req.getParameter("Euser");
			String Ent2 = req.getParameter("Epasswd");
			String Ent3 = req.getParameter("Ent3");
			Ent ent = new Ent();
			if(Ent1!=null && Ent1.length()>0){
				ent.setEnt1(Ent1);
			}
			if(Ent2!=null && Ent2.length()>0){
				ent.setEnt2(Ent2);
			}
			if(Ent3!=null && Ent3.length()>0){
				ent.setEnt3(Ent3);
			}
			AdminDaoJdbcImpl dao1 = new AdminDaoJdbcImpl();
			dao1.add3(ent);
			HttpSession session = req.getSession();
			session.setAttribute("Ent3",ent.getEnt3());
			res.sendRedirect("index5.do");
			//req.getRequestDispatcher("WEB-INF/main/index5.jsp").forward(req, res);
		}
		protected void toEnt(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.getRequestDispatcher("WEB-INF/main/index2.jsp").forward(req, res);
		}
		protected void toEnt1(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			res.sendRedirect("toent.do");
		}
		protected void toEnt2(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			res.sendRedirect("toent.do");
		}
		//个人用户跳转到个人用户的修改密码页面
		protected void toXiu1(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.getRequestDispatcher("WEB-INF/main/xiu.jsp").forward(req, res);
		}
		//个人用户修改密码页面及修改完成的跳转
		protected void toXiu2(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.setCharacterEncoding("utf-8");
			String pwd = req.getParameter("xiu_pwd2");
			String name = req.getSession().toString();
			System.out.println(name);
			AdminDaoJdbcImpl dao = new AdminDaoJdbcImpl();
			dao.xiu(pwd, name);
			res.sendRedirect("toIndex.do");
		}
		//企业用户跳转到修改密码界面
		protected void toXiu3(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.getRequestDispatcher("WEB-INF/main/xiu2.jsp").forward(req, res);
		}
		//企业用户修改密码及修改完成后的跳转
		protected void toXiu4(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.setCharacterEncoding("utf-8");
			String pwd = req.getParameter("xiu2_pwd2");
			String name = req.getSession().toString();
			System.out.println(name);
			AdminDaoJdbcImpl dao = new AdminDaoJdbcImpl();
			dao.xiu2(pwd, name);
			res.sendRedirect("toIndex.do");
		}
		//企业用户的模糊搜素
		protected void toCha01(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			CostDaoJdbcImpl dao = new CostDaoJdbcImpl();
			List<Admin> list = dao.findAll1();
			req.setAttribute("admin", list);
			req.getRequestDispatcher("WEB-INF/main/sou1.jsp").forward(req, res);
		}
		//企业用户的模糊搜素
		protected void toIndex6(HttpServletRequest req
				, HttpServletResponse res) throws ServletException, IOException {
			req.getRequestDispatcher("WEB-INF/main/index6.jsp").forward(req, res);
		}
		
	
}
