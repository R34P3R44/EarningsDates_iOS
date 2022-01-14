//
//  HomeViewController.swift
//  EarningsDates
//
//  Created by Adrian.T on 10/12/2021.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
    
    @IBOutlet weak var signOutButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
    }
    
    func setUpElements() {
        
        errorLabel.alpha = 0
        Utilities.styleFilledButton(signOutButton)
    }
    
    @IBAction func signOutTapped(_ sender: Any) {
        let auth = Auth.auth()
        
        if error != nil {
            
            showError(error!)
            
            self.errorLabel.text = error!.localizedDescription
            self.errorLabel.alpha = 1
        }
        else {
            
            let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
            
            self.view.window?.rootViewController = homeViewController
            self.view.window?.makeKeyAndVisible()
        }
        
        func showError(_ message:String) {
        
        errorLabel.text = message
        errorLabel.alpha = 1
        }
    
        func transitionToHome() {
            
            let viewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.viewController) as? ViewController
            
            view.window?.rootViewController = viewController
            view.window?.makeKeyAndVisible()
        }
    }
}
