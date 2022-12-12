//
//  WelcomeViewController.swift
//  Authorization-App
//
//  Created by mac on 12.12.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet var welcomeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName)!"
    }
    
}
