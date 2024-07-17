//
//  Book.swift
//  book-store
//
//  Created by Sithu Win on 02/07/2024.
//

import Foundation

class Book {
    let bookId:Int
    let imageName: String
    let authorFirstName: String
    let authorLastName: String
    let rating: Double
    let aboutTheAuthor: String
    let overview: String
    var isBookMark:Bool
    
    init(bookId: Int, imageName: String, authorFirstName: String, authorLastName: String, rating: Double, aboutTheAuthor: String, overview: String, isBookMark: Bool = false) {
        self.bookId = bookId
        self.imageName = imageName
        self.authorFirstName = authorFirstName
        self.authorLastName = authorLastName
        self.rating = rating
        self.aboutTheAuthor = aboutTheAuthor
        self.overview = overview
        self.isBookMark = isBookMark
    }
    
    
    
    static func getDummyBooks() -> [Book]{
        [
            .init(bookId: 1, imageName: "Jujutsu Kaisen", authorFirstName: "Gege", authorLastName: "Hauki", rating: 3.5 ,aboutTheAuthor: "Jujutsu Kaisen is a Japanese manga series written and illustrated by Gege Akutami. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since March 2018, with its chapters collected in 25 tankōbon volumes as of January 2024.", overview: "Jujutsu Kaisen is a Japanese manga series written and illustrated by Gege Akutami. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since March 2018, with its chapters collected in 25 tankōbon volumes as of January 2024. ")
        ]
    }
}

