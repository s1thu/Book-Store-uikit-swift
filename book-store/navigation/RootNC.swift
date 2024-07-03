//
//  RootNC.swift
//  book-store
//
//  Created by Sithu Win on 03/07/2024.
//

import UIKit

class RootNC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.navigateToHome()
        }
        
    }
    
    func navigateToHome(){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "BookListVC") as? BookListVC
        guard let vc = vc else { return  }
        pushViewController(vc, animated: true)
    }
    

}
