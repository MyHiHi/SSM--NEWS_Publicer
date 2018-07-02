package www.springlogin.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itheima.po.Author;
import com.itheima.po.ITNews;
import com.itheima.po.User;
import com.itheima.utils.MybatisUtils;

@Controller
public class AuthorController {
	@RequestMapping(value="author.do")
	public String RegisterMethod(String name,Model model)
	{
		
		SqlSession sqlSession = MybatisUtils.getSession();
		
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		Author author=  sqlSession.selectOne("com.itheima.mapper"
				+ ".AuthorMapper.findAuthorByName", name);
	
		model.addAttribute("author",author);
		
		List<ITNews> news = sqlSession.selectList("com.itheima.mapper"
				+ ".ITNewsMapper.findAllNewsByAuthor",name);
		model.addAttribute("news",news);
		return "author.jsp";
		
	}	
	
}
