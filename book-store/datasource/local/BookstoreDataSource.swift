//
//  BookstoreDataSource.swift
//  book-store
//
//  Created by Sithu Win on 17/07/2024.
//

import Foundation

class BookstoreDataSource{
    
    private var bookList:[Book] = Book.getDummyBooks()
    
    static let shared = BookstoreDataSource.init()
    
    private init(){}
    
    func getAll() -> [Book]{
        bookList
    }
    
    func toggleBookmarkStatus(bookId:Int){
        bookList.first{$0.bookId == bookId}?.isBookMark.toggle()
    }
    
    func getBookById(bookId: Int) -> Book? {
        bookList.first{$0.bookId == bookId}
    }
    
    func getBookmarkedBooks() -> [Book]{
        bookList.filter{$0.isBookMark}
    }
}
