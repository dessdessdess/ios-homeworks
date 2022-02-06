//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Admin on 06.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileLabel.text = "Тут будет профиль"
    }
}
