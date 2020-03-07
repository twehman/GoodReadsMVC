package com.techelevator;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String displayBooks(@RequestParam String name, int minReviews, ModelMap mapModel) throws IOException, InterruptedException {
		GoodReadsWebRequest testRequest = new GoodReadsWebRequest();
		testRequest.determineAuthorID(name);
		
		long authorId = new AuthorParser().readConfig("xmlAuthorId.txt");
		ArrayList<Book> books = testRequest.getListOfAuthorBooks(authorId);
		bookDao.addBooksToDB(books, authorId, name);
		List<Book> books1 = bookDao.sortedBookList(minReviews);
		System.out.println(books1.size());
		mapModel.put("books1", books1);
		return "results";
	}
}
