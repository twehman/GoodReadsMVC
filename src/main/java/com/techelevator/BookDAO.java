package com.techelevator;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;


public interface BookDAO {
	
	public List<Book> sortedBookList (int minReviews);
	
	public void addBooksToDB (ArrayList<Book> books, long authorId, String authorName);
	
	public Book mapRowToBook(SqlRowSet result);
}
