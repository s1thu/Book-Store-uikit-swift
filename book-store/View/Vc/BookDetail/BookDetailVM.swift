//
//  BookDetailVM.swift
//  book-store
//
//  Created by Sithu Win on 20/07/2024.
//

import Foundation

protocol BookDetailVMDelegate{
    func onGetByBookId()
}

class BookDetailVM{
    
    var data:Book? = nil{
        didSet{
            if data != nil {
                delegate.onGetByBookId()
            }
        }
    }
    
    let bookRepository = BookRepository.init()
    
    private let delegate:BookDetailVMDelegate
    
    init(delegate: BookDetailVMDelegate) {
        self.delegate = delegate
    }
    
    func getBookbyBookId(Bookid:Int){
        data = bookRepository.getBookById(bookId: Bookid)
    }
    
    func onChangeBookmark(){
        if let data = data {
            bookRepository.addOrRemoveBookmark(bookId: data.bookId)
            getBookbyBookId(Bookid: data.bookId)
        }
    }
}
