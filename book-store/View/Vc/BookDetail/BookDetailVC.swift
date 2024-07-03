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

        bind()
    }
    

    //Initial Setup Views
    private func setupViews(){
        
    }
    
    //Initial Bindings
    private func setupBindings(){
        
    }
    
    func bindData(data:Book?){
        if let data = data{
            self.data = data
        }
    }
    
    func bind(){
        lblFirstName.text = data?.authorFirstName
    }

}
