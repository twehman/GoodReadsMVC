package com.techelevator;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller 
public class HelloController {
	
	@Autowired
	BookDAO bookDao;

	@RequestMapping("/greeting")
	public String displayGreeting() {
		
		return "greeting";
	}
	
	@RequestMapping("/")
	public String redirectToSearch() {
		return "search";
	}
	
	@RequestMapping(path = "/search", method=RequestMethod.GET)
	public String displaySearch() {
		return "search";
	}
	
	@RequestMapping(path = "/search", method=RequestMethod.POST)
	public String displayBooks(@RequestParam String name, int minReviews, RedirectAttributes flash) throws IOException, InterruptedException {
		GoodReadsWebRequest testRequest = new GoodReadsWebRequest();
		testRequest.determineAuthorID(name);
		
		long authorId = new AuthorParser().readConfig("xmlAuthorId.txt");
		ArrayList<Book> books = testRequest.getListOfAuthorBooks(authorId);
		bookDao.addBooksToDB(books, authorId, name);
		List<Book> books1 = bookDao.sortedBookList(minReviews, name);
		flash.addFlashAttribute("books", books1);
		return "redirect:/results";
	}
	
	
	@RequestMapping(path="/results", method=RequestMethod.GET)
	public String displayResults() {
		return "results";
	}
	

}
