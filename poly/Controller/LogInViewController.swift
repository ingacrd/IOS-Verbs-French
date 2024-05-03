//
//  ViewController.swift
//  poly
//
//  Created by english on 2023-11-09.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    var userLogued : String = ""
    
    @IBAction func btnSeePasswordTouchDown(_ sender: Any) {
        txtPassword.isSecureTextEntry.toggle()
    }
    @IBAction func btnSeePasswordTouchUpInside(_ sender: Any) {
        txtPassword.isSecureTextEntry.toggle()
    }
    
    @IBAction func btnSingIn(_ sender: Any) {
        
        print("Before calling signIn")
        if(!txtEmail.text!.isEmpty || !txtPassword.text!.isEmpty){
            
            FrenchVerbAPI.signIn(email: txtEmail.text!, password: txtPassword.text!) { token,username in

                DispatchQueue.main.async {

                    print("Logged in with token \(token)")
                    Context.loggedUserToken = token
                    Context.loggedUserName = username
                    
                    self.performSegue(withIdentifier: Segue.toVerbSelectionViewController, sender: self)

                }
                
            } failHandler: { httpStatusCode, errorMessage in
                print("Failed with code \(httpStatusCode) - \(errorMessage)")
                
                self.lblMessage.isHidden = false
                self.lblMessage.text = "user or password wrong"
            }
            
            print("After calling signIn")
            
            
        
        }else{
            lblMessage.isHidden = false
            lblMessage.text = "email or password can not be empty"
        }
        
        
        
        
    }
    
    @IBAction func btnRegisterTouchUpInside(_ sender: Any) {
        performSegue(withIdentifier: Segue.toSignUpViewController, sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MockData.readData()
        UsersProvider.generateMockData()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == Segue.toVerbSelectionViewController){
            let verbSelectionViewController = segue.destination as! VerbSelectionViewController
            //verbSelectionViewController.userLoggedin = Context.loggedUserName
            //secondViewController.receivedMessage = txtMessageWelcome.text
            
        }
        if(segue.identifier == Segue.toSignUpViewController){
            let signUpViewController = segue.destination as! SignUpViewController
            
            
        }
    }


}


