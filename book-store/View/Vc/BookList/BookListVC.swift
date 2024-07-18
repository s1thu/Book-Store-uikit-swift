//
//  BookListVC.swift
//  book-store
//
//  Created by Sithu Win on 02/07/2024.
//

import UIKit

class BookListVC: UIViewController {

    @IBOutlet weak var booklistTb:UITableView!
    
    var books:[Book] = []
    
//    let datasource = BookstoreDataSource.shared
    
    let repository = BookRepository.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        books = datasource.getAll()
        books = repository.getBookList()
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        booklistTb.reloadData()
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
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = booklistTb.dequeueReusableCell(withIdentifier: "BookListCellVC", for: indexPath) as? BookListCellVC
        guard let cell = cell else { return UITableViewCell() }
//        cell.book = datasource.getBookById(bookId: books[indexPath.row].bookId)
        cell.book = repository.getBookById(bookId: books[indexPath.row].bookId)
        cell.delegate = self
        return cell
    }
    
    
}

extension BookListVC:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BookDetailVC") as? BookDetailVC
        guard let vc = vc else { return  }
        navigationController?.pushViewController(vc, animated: true)
        vc.data = repository.getBookById(bookId: books[indexPath.row].bookId)
    }
}

extension BookListVC:BookListCellDelegate{
    func onChangeBookmark(data: Book) {
        repository.addOrRemoveBookmark(bookId: data.bookId)
        booklistTb.reloadData()
    }
    
    
}
