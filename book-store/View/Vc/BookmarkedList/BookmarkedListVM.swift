//
//  BookmarkedListVM.swift
//  book-store
//
//  Created by Sithu Win on 26/07/2024.
//

import Foundation

protocol BookmarkListDelegate{
    func ongetBookmarkedBooks()
}

class BookmarkedListVM{
    
    private let repository:BookRepository = .init()
    
    private let delegate:BookmarkListDelegate
    
    init(delegate: BookmarkListDelegate) {
        self.delegate = delegate
    }
    
    private (set) var bookmarkedBooks:[Book] = []{
        didSet{
            delegate.ongetBookmarkedBooks()
        }
    }
    
    func fetchBookmarkedBooks(){
        bookmarkedBooks = repository.getBookmarkedBooks()
    }
}
