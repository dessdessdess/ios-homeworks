//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Admin on 04.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let profileView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? UIView else {return}

        self.view.addSubview(profileView)

        profileView.translatesAutoresizingMaskIntoConstraints = true
        profileView.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        profileView.autoresizingMask = [UIView.AutoresizingMask.flexibleLeftMargin, UIView.AutoresizingMask.flexibleRightMargin, UIView.AutoresizingMask.flexibleTopMargin, UIView.AutoresizingMask.flexibleBottomMargin]
        
    }
    
}
