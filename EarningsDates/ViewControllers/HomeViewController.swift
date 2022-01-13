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
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
    }
    
    func setUpElements() {
        
        errorLabel.alpha = 0
        
        Utilities.styleFilledButton(signOutButton)
    }
    
    @IBAction func signOutTapped(_ sender: Any) {
        
        
        
        
    }
    
    
    
    
}
