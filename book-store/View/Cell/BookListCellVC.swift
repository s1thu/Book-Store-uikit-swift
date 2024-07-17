//
//  BookListCellVC.swift
//  book-store
//
//  Created by Sithu Win on 02/07/2024.
//

import UIKit

protocol BookListCellDelegate{
    func onChangeBookmark(data:Book)
}

class BookListCellVC: UITableViewCell {
    
    @IBOutlet weak var bookCover:UIImageView!
    @IBOutlet weak var bookName:UILabel!
    @IBOutlet weak var bookPrice:UILabel!
    @IBOutlet weak var bookMark:UIImageView!
    @IBOutlet weak var btnBookMark:UIButton!
    
    var delegate:BookListCellDelegate? = nil
    
    var book:Book? = nil {
        didSet{
            if let data = book {
                bookCover.image = UIImage(named: data.imageName)
                bookName.text = data.imageName
                bookPrice.text = String(format: "%.2f", data.rating)
                
                if(data.isBookMark){
                    bookMark.image = UIImage(named: "bookmark-fill")
                }else{
                    bookMark.image = UIImage(named: "bookmark-empty")
                }
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        
        btnBookMark.addTarget(self, action: #selector(onChangeBookMark), for: .touchUpInside)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc func onChangeBookMark(){
        if let data = book {
            delegate?.onChangeBookmark(data: data)
        }
    }
    
    
}
