//
//  BookListCellVC.swift
//  book-store
//
//  Created by Sithu Win on 02/07/2024.
//

import UIKit

class BookListCellVC: UITableViewCell {
    
    @IBOutlet weak var bookName:UILabel!
    @IBOutlet weak var bookPrice:UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(data:Book){
        bookName.text = data.imageName
        bookPrice.text = String(format: "%.2f", data.rating)
    }
    
}
