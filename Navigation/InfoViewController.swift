//
//  InfoViewController.swift
//  Navigation
//
//  Created by Admin on 06.02.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.saveButton.setTitle("Сохранить", for: .normal)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Внимание",
                                    message: "Сохранить изменения?",
                                      preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ок",
                                      style: UIAlertAction.Style.default,
                                      handler: saveChanges))
        alert.addAction(UIAlertAction(title: "Отмена",
                                      style: UIAlertAction.Style.default,
                                      handler: dismissChanges))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    private func saveChanges(action: UIAlertAction) {
        print(#function)
    }
    
    private func dismissChanges(action: UIAlertAction) {
        print(#function)
    }
    
}
