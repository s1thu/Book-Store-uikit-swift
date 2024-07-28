//
//  BookmarkedCell.swift
//  book-store
//
//  Created by Sithu Win on 20/07/2024.
//

import UIKit

class BookmarkedCell: UICollectionViewCell {
    
    @IBOutlet weak var imgBookmarked:UIImageView!
    @IBOutlet weak var lblAuthor:UILabel!
    @IBOutlet weak var lblBookname:UILabel!
    
    var bookmarkedBook:Book? = nil {
        didSet{
            if let book = bookmarkedBook {
                imgBookmarked.image = UIImage(named: book.imageName)
                lblAuthor.text = "\(book.authorFirstName) \(book.authorLastName)"
                lblBookname.text = book.imageName
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
