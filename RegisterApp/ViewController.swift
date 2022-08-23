//
//  ViewController.swift
//  RegisterApp
//
//  Created by apple on 8/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setGradientBackground()
        
        
        //TextField Background Color
        usernameTextfield.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        
        passwordTextField.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        
        
        usernameTextfield.attributedPlaceholder =
        NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 235.0/255.0, green: 235/255.0, blue: 245.0/255.0, alpha: 0.6)])
        
        passwordTextField.attributedPlaceholder =
        NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 235.0/255.0, green: 235/255.0, blue: 245.0/255.0, alpha: 0.6)])
    }
    
    
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

