//
//  BookDetailVC.swift
//  book-store
//
//  Created by Sithu Win on 02/07/2024.
//

import UIKit

protocol BookDetailDelegate{
    func onChangeBookmarkDetail(data:Book)
}

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
    @IBOutlet weak var btnBookmark:UIButton!
    @IBOutlet weak var btnBack:UIButton!
    
    lazy var bookDetailVM = BookDetailVM(delegate: self)
    
    var bookId: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupBindings()
        bookDetailVM.getBookbyBookId(Bookid: bookId!)
    }

    //Initial Setup Views
    private func setupViews(){
        bind()
    }
    
    //Initial Bindings
    private func setupBindings(){
        btnBack.addTarget(self, action: #selector(goBackToHome), for: .touchUpInside)
        btnBookmark.addTarget(self, action: #selector(onChangeBookmarkDetail), for: .touchUpInside)
    }
    
    
    func bind(){
        if let book = bookDetailVM.data {
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
            
            if book.isBookMark{
                btnBookmark.setImage(UIImage(systemName: "bookmark.fill"), for: .normal)
            }else{
                btnBookmark.setImage(UIImage(systemName: "bookmark"), for: .normal)
            }
        }
    }
    
    @objc func goBackToHome(){
        navigationController?.popViewController(animated: true)
    }

    @objc func onChangeBookmarkDetail(){
        if let book = bookDetailVM.data {
            bookDetailVM.onChangeBookmark()
            bind()
        }
    }
}

extension BookDetailVC:BookDetailVMDelegate{
    func onGetByBookId() {
        bind()
    }
    
    
}
