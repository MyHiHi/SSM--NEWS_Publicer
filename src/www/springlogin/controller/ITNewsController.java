package www.springlogin.controller;

import java.sql.Timestamp;
import java.util.List;



import java.util.Random;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itheima.po.Author;
import com.itheima.po.ITNews;
import com.itheima.utils.MybatisUtils;


@Controller
public class ITNewsController {
	@RequestMapping(value="public.do")
	public String publicNews(Model model)
	{
		
		SqlSession sqlSession = MybatisUtils.getSession();
		
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		List<ITNews> news = sqlSession.selectList("com.itheima.mapper"
				+ ".ITNewsMapper.findAllNews");
		model.addAttribute("news",news);
		
//		删除的数据
		List<ITNews> junkNews = sqlSession.selectList("com.itheima.mapper"
				+ ".ITNewsMapper.queryJunkNews");
		System.out.println(junkNews);
		model.addAttribute("junkNews",junkNews);
		
		return "ITNews.jsp";	
	}
	
	
	
	
	@RequestMapping(value="searchNewsByAuthor.do")
	public String publicNews(String author,Model model)
	{
		
		SqlSession sqlSession = MybatisUtils.getSession();
		
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		List<ITNews> news = sqlSession.selectList("com.itheima.mapper"
				+ ".ITNewsMapper.findAllNewsByAuthor",author);
		model.addAttribute("news",news);
		
//		删除的数据
		List<ITNews> junkNews = sqlSession.selectList("com.itheima.mapper"
				+ ".ITNewsMapper.queryJunkNews");
		System.out.println(junkNews);
		model.addAttribute("junkNews",junkNews);
		
		return "ITNews.jsp";	
	}
	
	
	@RequestMapping(value="publicBrowser.do")
	public String publicBrowserNews(Model model)
	{
		SqlSession sqlSession = MybatisUtils.getSession();
		
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		List<ITNews> news = sqlSession.selectList("com.itheima.mapper"
				+ ".ITNewsMapper.findAllNews");
		model.addAttribute("news",news);
		
		return "browserIndex.jsp";
		
	}
	
	
	@RequestMapping(value="cotentList.do")
	public String publicBrowserNews(String type,Model model)
	{
		SqlSession sqlSession = MybatisUtils.getSession();
		
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		List<ITNews> news = sqlSession.selectList("com.itheima.mapper"
				+ ".ITNewsMapper.findNewsByType",type);
		model.addAttribute("news",news);
		System.out.println(news);
		return "contentList.jsp";	
	}
	
	
	
	@RequestMapping(value="content.do")
	public String publicNews(int id,Model model)
	{
		SqlSession sqlSession = MybatisUtils.getSession();
		
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		ITNews news = sqlSession.selectOne("com.itheima.mapper"
				+ ".ITNewsMapper.findNewsById",id);
		model.addAttribute("news",news);
		return "ITNewsContent.jsp";	
	}
	
	
	@RequestMapping(value="contentBrowser.do")
	public String publicBrowserNews(int id,Model model)
	{
		SqlSession sqlSession = MybatisUtils.getSession();
		
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
		ITNews news = sqlSession.selectOne("com.itheima.mapper"
				+ ".ITNewsMapper.findNewsById",id);
		model.addAttribute("news",news);
		return "browserContent.jsp";	
	}
	
	@RequestMapping(value="delete.do")
	
	public String deleteNews(int id,Model model)
	{
		SqlSession sqlSession = MybatisUtils.getSession();
		System.out.println("********KKOOOOOKKKK"+id);
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
	
		sqlSession.update("com.itheima.mapper"
				+ ".ITNewsMapper.deleteNewsById",id);
		sqlSession.commit();
		return "redirect:/public.do";	
	}
	
		
	@RequestMapping(value="deleteNews.do")
	public String deleteNews2(int id,Model model)
	{
		SqlSession sqlSession = MybatisUtils.getSession();
		System.out.println("********KKOOOOOKKKK"+id);
		// SqlSession执行映射文件中定义的SQL，并返回映射结果
	
		sqlSession.update("com.itheima.mapper"
				+ ".ITNewsMapper.deleteNews",id);
		sqlSession.commit();
		return "redirect:/public.do";	
	}
	
	
		@RequestMapping(value="addITNews.do")
		
		public String addITNews(String type,String isTop,String title,String content,String author,Model model)
		{
			SqlSession sqlSession = MybatisUtils.getSession();
		
			ITNews news = new ITNews();
			news.setContent(content);
			news.setIsTop(isTop);
			news.setOkTime(new Timestamp(System.currentTimeMillis()));
			news.setTitle(title);
			news.setType(type);
			news.setAuthor(author);
			sqlSession.insert("com.itheima.mapper"
					+ ".ITNewsMapper.insertITNews",news);
			sqlSession.commit();
			int articles = sqlSession.selectOne("com.itheima.mapper"
					+ ".ITNewsMapper.findNewsByAuthor",author);
			
			Author aut= sqlSession.selectOne("com.itheima.mapper"
					+ ".AuthorMapper.findAuthorByName",author);
			System.out.println("aut== "+aut);
			Author auth = new Author();
			auth.setArticles(articles);
			Random r = new Random();
			int follow = r.nextInt(100);
			auth.setFollows(follow);
			int like = r.nextInt(100);
			auth.setLikes(like);
			auth.setName(author);
			if (aut==null){
				
				sqlSession.insert("com.itheima.mapper"
						+ ".AuthorMapper.insertAuthor",auth);
			
				sqlSession.commit();
			}else{
				sqlSession.insert("com.itheima.mapper"
						+ ".AuthorMapper.updateAuthor",auth);
				sqlSession.commit();
			}
			
	
			return "redirect:/public.do";	
		}
		

		@RequestMapping(value="edit.do")
		
		public String editITNews(int id,Model model)
		{
			SqlSession sqlSession = MybatisUtils.getSession();
		
			ITNews news = new ITNews();
			
			news = sqlSession.selectOne("com.itheima.mapper"
					+ ".ITNewsMapper.findNewsById",id);
			model.addAttribute("news",news);
			return "editITNews.jsp";	
		}
		
		@RequestMapping(value="updateITNews.do")
		public String updateITNews(int id,String type,String isTop,String title,String content,String author,Model model)
		{
			SqlSession sqlSession = MybatisUtils.getSession();
		
			ITNews news = new ITNews();
			news.setId(id);
			news.setContent(content);
			news.setIsTop(isTop);
		
			news.setTitle(title);
			news.setType(type);
			news.setAuthor(author);
			news.setOkTime(new Timestamp(System.currentTimeMillis()));
			sqlSession.insert("com.itheima.mapper"
					+ ".ITNewsMapper.updateITNews",news);
			sqlSession.commit();
			return "redirect:/public.do";	
		}
		
		
		@RequestMapping(value="recovery.do")
		public String recoveryNews(int id,Model model)
		{
			SqlSession sqlSession = MybatisUtils.getSession();
			
			// SqlSession执行映射文件中定义的SQL，并返回映射结果
			sqlSession.update("com.itheima.mapper"
					+ ".ITNewsMapper.recoveryITNews",id);
			sqlSession.commit();
			return "redirect:/public.do";
		}
}
