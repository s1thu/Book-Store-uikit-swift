//
//  BookListCellVC.swift
//  book-store
//
//  Created by Sithu Win on 02/07/2024.
//

import UIKit

protocol BookListCellDelegate{
    func onChangeBookmark(data:Bool)
}

class BookListCellVC: UITableViewCell {
    
    @IBOutlet weak var bookCover:UIImageView!
    @IBOutlet weak var bookName:UILabel!
    @IBOutlet weak var bookPrice:UILabel!
    @IBOutlet weak var bookMark:UIImageView!
    @IBOutlet weak var btnBookMark:UIButton!
    
    var delegate:BookListCellDelegate? = nil
    
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
    
    func bindData(data:Book){
        bookCover.image = UIImage(named: data.imageName)
        bookName.text = data.imageName
        bookPrice.text = String(format: "%.2f", data.rating)
    }
    
    @objc func onChangeBookMark(){
        delegate?.onChangeBookmark(data: true)
    }
    
    
}
