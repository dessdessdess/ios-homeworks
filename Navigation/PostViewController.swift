//
//  PostViewController.swift
//  Navigation
//
//  Created by Admin on 06.02.2022.
//

import UIKit



class PostViewController: UIViewController {
    
    var postDetail: FeedViewController.Post?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = postDetail?.title
        let newItem = UIBarButtonItem.init(image: UIImage(systemName: "square.and.pencil"), style: .done, target: self, action: #selector(self.openInfo))
        self.navigationItem.setRightBarButton(newItem, animated: true)
    }
        
    @objc private func openInfo() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let infoVC = storyboard.instantiateViewController(identifier: "InfoViewController")
               
        present(infoVC, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
