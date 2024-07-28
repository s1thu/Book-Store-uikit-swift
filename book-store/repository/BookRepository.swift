//
//  BookRepository.swift
//  book-store
//
//  Created by Sithu Win on 18/07/2024.
//

import Foundation

class BookRepository{
    let datasource:BookstoreDataSource = BookstoreDataSource.shared
    
    func getBookList() -> [Book] {
        datasource.getAll()
    }
    
    func addOrRemoveBookmark(bookId:Int){
        datasource.toggleBookmarkStatus(bookId: bookId)
    }
    
    func getBookById(bookId:Int) -> Book?{
        datasource.getBookById(bookId: bookId)
    }
    
    func getBookmarkedBooks() -> [Book]{
        datasource.getBookmarkedBooks()
    }
        
}
