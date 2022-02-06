//
//  TabBarController.swift
//  Navigation
//
//  Created by Admin on 06.02.2022.
//

import UIKit

class TabBarController: UITabBarController {

    private let tabBarItems = [
        (title: "Лента", image: UIImage(systemName: "newspaper")),
        (title: "Профиль", image: UIImage(systemName: "person"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewControllers?.enumerated().forEach(
            {
                (index, viewController) in
                viewController.tabBarItem.title = tabBarItems[index].title
                viewController.tabBarItem.image = tabBarItems[index].image
            }
        )
        
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
