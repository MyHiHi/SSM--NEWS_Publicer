package www.springlogin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itheima.po.Customer;
import com.itheima.po.User;
import com.itheima.utils.MybatisUtils;

@Controller
public class LoginController {
	@RequestMapping(value="login.do")
	public String loginMethod(String username,String password,Model model,HttpServletRequest request)
	{
		
		SqlSession sqlSession = MybatisUtils.getSession();

		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		User user= sqlSession.selectOne("com.itheima.mapper"
				+ ".UserMapper.findUserByName", username);
		HttpSession session = request.getSession(true);
		
		String relPassword = MybatisUtils.md5Password(password);
		if (user==null || !user.getPassword().equals(relPassword)){
			model.addAttribute("isLogin",false);
			return "login.jsp";
		}	
		else {
			model.addAttribute("isLogin",true);
			session.setAttribute("user", user);
			
			return "Hello.jsp";
		}
		
	}	
	
	@RequestMapping(value="register.do")
	public String RegisterMethod(String username,String password,String email,String phone,Model model)
	{
		
		SqlSession sqlSession = MybatisUtils.getSession();
		
		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		
		user.setPhone(phone);
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		sqlSession.insert("com.itheima.mapper"
				+ ".UserMapper.insertUser", user);
		sqlSession.commit();
		model.addAttribute("user",user);
		return "index.jsp";
		
	}	
	
	
	@RequestMapping(value="logout.do")
	public String LogoutMethod(HttpServletRequest request,Model model)
	{
		
	/*	SqlSession sqlSession = MybatisUtils.getSession();
		
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		sqlSession.insert("com.itheima.mapper"
				+ ".UserMapper.insertUser", user);
		sqlSession.commit();
		model.addAttribute("user",user);*/
		request.getSession(true).removeAttribute("user");
		return "login.jsp";
		
	}	
	
	
	@RequestMapping(value="queryAllUser.do")
	public String QueryAllUser(Model model)
	{
		
		SqlSession sqlSession = MybatisUtils.getSession();
		
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		List<User> user = sqlSession.selectList("com.itheima.mapper"
				+ ".UserMapper.findAllUser");
		System.out.println(user);
		return "yes.jsp";
		
	}	
	
}
