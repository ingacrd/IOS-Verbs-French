//
//  LogInViewController.swift
//  poly
//
//  Created by english on 2023-11-09.
//


import UIKit


class SignUpViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var eyeButton: UIButton!
    
    @IBOutlet weak var lblMessage: UILabel!
    var isPasswordVisible = false

    override func viewDidLoad() {
        super.viewDidLoad()
        eyeButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        eyeButton.addTarget(self, action: #selector(buttonTouchUpInside), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    @objc func buttonTouchDown() {
        isPasswordVisible = true
        txtPassword.isSecureTextEntry = false
        let image = UIImage(systemName: "eye.fill")
        eyeButton.setImage(image, for: .normal)
    }
    
    @objc func buttonTouchUpInside() {
        isPasswordVisible = false
        txtPassword.isSecureTextEntry = true
        let image = UIImage(systemName: "eye.slash.fill")
        eyeButton.setImage(image, for: .normal)
    }
    
    @IBAction func btnReturnLogin(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

    @IBAction func btnSignUpTouchUpInside(_ sender: Any?) {
            // Step 1: Validation
            guard let name = txtName.text?.lowercased(), !name.isEmpty,
                  let email = txtEmail.text?.lowercased(), !email.isEmpty,
                  let password = txtPassword.text, !password.isEmpty else {
                // Handle validation failure, show an alert or appropriate UI feedback
                return
            }
            
            // Step 2: Check if the user exists
        if UsersProvider.all.contains(where: { $0.email == email }) {
                // Handle case where the user already exists, show an alert or appropriate UI feedback
                return
            }
            
            // Step 3: Save User
            let newUser = Users(name: name, email: email, password: password)
            UsersProvider.all.append(newUser)
        lblMessage.text = "User Registered"
        lblMessage.isHidden = false
            // Step 4: Navigate to Login Page
            //navigateToLoginPage()
        }
    
        /*
        func navigateToLoginPage() {
            // Instantiate the login view controller
            if let loginVC = storyboard?.instantiateViewController(withIdentifier: "toSignUpViewController") as? LogInViewController {
                // Push the login view controller onto the navigation stack
                navigationController?.pushViewController(loginVC, animated: true)
            }
        }
        */
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
