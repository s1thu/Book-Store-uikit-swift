//
//  Book.swift
//  book-store
//
//  Created by Sithu Win on 02/07/2024.
//

import Foundation

struct Book {
    var imageName: String
    var authorFirstName: String
    var authorLastName: String
    var rating: Double
    var aboutTheAuthor: String
    var overview: String
    
    static func getDummyBooks() -> [Book]{
        [
            .init(imageName: "Jujutsu Kaisen", authorFirstName: "Gege", authorLastName: "Hauki", rating: 3.5 ,aboutTheAuthor: "Jujutsu Kaisen is a Japanese manga series written and illustrated by Gege Akutami. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since March 2018, with its chapters collected in 25 tankōbon volumes as of January 2024.", overview: "Jujutsu Kaisen is a Japanese manga series written and illustrated by Gege Akutami. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since March 2018, with its chapters collected in 25 tankōbon volumes as of January 2024. ")
        ]
    }
}

