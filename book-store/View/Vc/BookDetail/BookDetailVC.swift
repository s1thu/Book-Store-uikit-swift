//
//  BookDetailVC.swift
//  book-store
//
//  Created by Sithu Win on 02/07/2024.
//

import UIKit

class BookDetailVC: UIViewController {
    
    @IBOutlet weak var imgBookCover:UIImageView!
    @IBOutlet weak var lblFirstName:UILabel!
    @IBOutlet weak var lblLastName:UILabel!
    @IBOutlet weak var rating1:UIImageView!
    @IBOutlet weak var rating2:UIImageView!
    @IBOutlet weak var rating3:UIImageView!
    @IBOutlet weak var rating4:UIImageView!
    @IBOutlet weak var lblRating:UILabel!
    @IBOutlet weak var lblAboutAuthor:UILabel!
    @IBOutlet weak var lblOverview:UILabel!
    
    var data:Book? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupViews()
    }
    

    //Initial Setup Views
    private func setupViews(){
        bind()
    }
    
    //Initial Bindings
    private func setupBindings(){
        
    }
    
    
    func bind(){
        if let book = data {
            imgBookCover.image = UIImage(named: book.imageName)
            lblFirstName.text = book.authorFirstName
            lblLastName.text = book.authorLastName
            lblRating.text = String(format: "%.1f", book.rating)
            
            let filledStarImage = UIImage(named: "star-filled")
            let halfStarImage = UIImage(named: "star-half")
            
            let ratingImages = [rating1,rating2,rating3,rating4]
            
            // Determine the number of full and half stars
           let fullStars = Int(book.rating)
           let hasHalfStar = book.rating.truncatingRemainder(dividingBy: 1) != 0
           
           // Set full stars
           for i in 0..<fullStars {
               ratingImages[i]?.image = filledStarImage
           }
           
           // Set half star if applicable
           if hasHalfStar {
               ratingImages[fullStars]?.image = halfStarImage
           }
            
            
            lblAboutAuthor.text = book.aboutTheAuthor
            lblOverview.text = book.aboutTheAuthor
        }
    }

}
