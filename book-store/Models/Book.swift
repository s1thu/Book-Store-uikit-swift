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
        books
    }
}

let books = [
    Book(imageName: "book-cover-one",
         authorFirstName: "Alice",
         authorLastName: "Johnson",
         rating: 4.5,
         aboutTheAuthor: "Alice Johnson is an award-winning author known for her compelling narratives and memorable characters.",
         overview: "An epic tale of adventure and discovery that explores the depths of human resilience."),
    
    Book(imageName: "book-cover-two",
         authorFirstName: "Bob",
         authorLastName: "Smith",
         rating: 4.0,
         aboutTheAuthor: "Bob Smith has captivated readers worldwide with his unique storytelling and rich historical settings.",
         overview: "A gripping historical fiction that brings to life a pivotal moment in history through the eyes of its unsung heroes."),
    
    Book(imageName: "book-cover-three",
         authorFirstName: "Carol",
         authorLastName: "Davis",
         rating: 4.8,
         aboutTheAuthor: "Carol Davis is a celebrated novelist whose works explore the intricacies of human relationships and the beauty of the everyday.",
         overview: "A heartwarming story of love, loss, and the power of friendship that challenges the way we see the world around us.")
]
