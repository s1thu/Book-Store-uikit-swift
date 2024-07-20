//
//  BookListVM.swift
//  book-store
//
//  Created by Sithu Win on 20/07/2024.
//

import Foundation

protocol BookListVMDelegate{
    func onGetBooks()
}

class BookListVM{
    
    private let delegate:BookListVMDelegate
    
    private let bookRepository = BookRepository.init()
    
    private(set) var books:[Book] = []{
        didSet{
            delegate.onGetBooks()
        }
    }
    
    init(delegate: BookListVMDelegate) {
        self.delegate = delegate
    }
    
    func fetchBooks(){
        books = bookRepository.getBookList()
    }
    
    func onChangeBookmark(bookId: Int){
        bookRepository.addOrRemoveBookmark(bookId: bookId)
        fetchBooks()
    }
    
    func getBookbyBookId(bookId:Int) -> Book{
        bookRepository.getBookById(bookId: bookId)!
    }
}
