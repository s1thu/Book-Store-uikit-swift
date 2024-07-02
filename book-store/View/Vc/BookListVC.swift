//
//  BookListVC.swift
//  book-store
//
//  Created by Sithu Win on 02/07/2024.
//

import UIKit

class BookListVC: UIViewController {

    @IBOutlet weak var booklistTb:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        //Register Table Cell
        booklistTb.register(UINib(nibName: "BookListCellVC", bundle: nil), forCellReuseIdentifier: "BookListCellVC")
        booklistTb.dataSource = self
        booklistTb.delegate = self
        booklistTb.separatorStyle = .none
    }
    
    func setupBindings(){
        
    }

}

extension BookListVC:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = booklistTb.dequeueReusableCell(withIdentifier: "BookListCellVC", for: indexPath) as? BookListCellVC
        guard let cell = cell else { return UITableViewCell() }
        return cell
    }
    
    
}

extension BookListVC:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
}