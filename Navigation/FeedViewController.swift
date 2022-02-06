//
//  FeedViewController.swift
//  Navigation
//
//  Created by Admin on 06.02.2022.
//

import UIKit

class FeedViewController: UIViewController {
   
    struct Post {
        let title: String
    }
    
    @IBOutlet weak var goToPostButton: UIButton!
    override func viewDidLoad() {
       
        super.viewDidLoad()
        navigationItem.backButtonTitle = "Назад"
        self.setupGoToPostButton()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PostViewController,
           segue.identifier == "openPost" {
                        
            let postDetail = Post(title: "Первый пост")
            destination.postDetail = postDetail
            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Лента"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationItem.title = ""
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    private func setupGoToPostButton() {
        self.goToPostButton.layer.cornerRadius = 12
        self.goToPostButton.clipsToBounds = true
        self.goToPostButton.setTitle("Перейти к посту", for: .normal)
        self.goToPostButton.backgroundColor = .systemBlue
        self.goToPostButton.setTitleColor(.white, for: .normal)
    }
    
}
