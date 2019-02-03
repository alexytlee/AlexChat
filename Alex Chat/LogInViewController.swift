//
//  LogInViewController.swift
//  Alex CHat
//
//  Created by Alex Lee on 02/01/2019.
//  Copyright (c) 2019 Alex Lee. All rights reserved.
//

//  This is the view controller where users login


import UIKit
import Firebase


class LogInViewController: UIViewController {
    
    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.passwordTextfield.isSecureTextEntry = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func logInPressed(_ sender: AnyObject) {
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                print("Log in successful!")
                
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
            
        }
        
    }
    
    
    
    
}  
