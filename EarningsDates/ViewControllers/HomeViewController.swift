//
//  HomeViewController.swift
//  EarningsDates
//
//  Created by Adrian.T on 10/12/2021.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
    
    @IBOutlet weak var logOutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
    }
    
    func setUpElements() {
        
        Utilities.styleFilledButton(logOutButton)
    }
    
    @IBAction func logOutTapped(_ sender: Any) {
        
        do {
            try FirebaseAuth.Auth.auth().signOut()
            
            logOutButton.removeFromSuperview()
            transitionToViewController()
        }
        catch {
            print("An error accured")
        }
    }
    
    func transitionToViewController() {
        
        let viewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.viewController) as? ViewController
        
        view.window?.rootViewController = viewController
        view.window?.makeKeyAndVisible()
    }
}
