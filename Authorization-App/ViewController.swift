//
//  ViewController.swift
//  Authorization-App
//
//  Created by mac on 12.12.2022.
//

import UIKit

final class LoginViewController: UIViewController {//final - чтобы от этого класса не наследовались классы
    
    private let login = "user"
    private let password = "password"
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? WelcomeViewController else {return}
        loginVC.userName = login
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        userNameTF.endEditing(true)
        passwordTF.endEditing(true)
    }
    
    //почему-то не работает, хотя подключил :/
    @IBAction override func unwind(for unwindSegue: UIStoryboardSegue,
                                   towards subsequentVC: UIViewController) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInButtonPressed() {
        if userNameTF.text != login || passwordTF.text != password {
            showAlertMessage(title: "Your user name or password is wrong!!!",
                             message: "Try again")
        }
    }
    
    @IBAction func remindLogin() {
        showAlertMessage(title: "Ooops!",
                         message: "Your login is \(login)")
    }
    
    @IBAction func remindPassword() {
        showAlertMessage(title: "Ooops!",
                         message: "Your password is \(password)")
    }
    
    private func showAlertMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}

