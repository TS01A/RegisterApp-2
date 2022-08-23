//
//  SignUpViewController.swift
//  RegisterApp
//
//  Created by apple on 8/20/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextfiled: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setGradientBackground()
        
        //TextField Background Color
        usernameTextField.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        
        passwordTextfield.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        
        emailTextfiled.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        
        
        usernameTextField.attributedPlaceholder =
        NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 235.0/255.0, green: 235/255.0, blue: 245.0/255.0, alpha: 0.6)])
        
        emailTextfiled.attributedPlaceholder =
        NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 235.0/255.0, green: 235/255.0, blue: 245.0/255.0, alpha: 0.6)])
        
        passwordTextfield.attributedPlaceholder =
        NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 235.0/255.0, green: 235/255.0, blue: 245.0/255.0, alpha: 0.6)])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 132.0/255.0, green: 104.0/255.0, blue: 212.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 39.0/255.0, green: 16.0/255.0, blue: 107.0/255.0, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }

}
