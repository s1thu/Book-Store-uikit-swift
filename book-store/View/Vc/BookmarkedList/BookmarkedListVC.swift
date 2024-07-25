//
//  BookmarkedListVC.swift
//  book-store
//
//  Created by Sithu Win on 25/07/2024.
//

import UIKit

class BookmarkedListVC: UIViewController {
    
    @IBOutlet weak var cvBookmarkedList:UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        initBindings()
    }
    
    private func setUpViews(){
        cvBookmarkedList.register(.init(nibName: "BookmarkedCell", bundle: nil), forCellWithReuseIdentifier: "BookmarkedCell")
        cvBookmarkedList.dataSource = self
        cvBookmarkedList.contentInset = .init(top: 10, left: 20, bottom: 10, right: 20)
    }
    
    private func initBindings(){
        
    }


}
extension BookmarkedListVC:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookmarkedCell", for: indexPath) as? BookmarkedCell
        guard let cell = cell else { return UICollectionViewCell() }
        return cell
    }
    
    
}

extension BookmarkedListVC:UICollectionViewDelegateFlowLayout{
    //for row spacing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    //padding spacing in collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    //interitemspacing mhr htae yin d mhr lr - pay
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: collectionView.frame.width/2 - 10, height: 308)
    }
}
