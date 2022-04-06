//
//  RegisterViewController.swift
//  WorldCinema
//
//  Created by 35 кабинет on 30.11.2021.
//

import UIKit
import SwiftyJSON
import Alamofire

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var fam: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var pass: UITextField!
    
    @IBOutlet weak var doublepass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func reg(_ sender: Any) {
        guard !name.text!.isEmpty else {
            return showAlertDialog(message: "Пустое поле имя")
        }
        guard !fam.text!.isEmpty else {
         return showAlertDialog(message: "Пустое поле фамилия")
    }
        
        guard !email.text!.isEmpty else {
         return showAlertDialog(message: "Пустое поле E-mail")
    }
        
        guard !pass.text!.isEmpty else {
         return showAlertDialog(message: "Введите пароль")
    }
        
        guard !doublepass.text!.isEmpty else {
         return showAlertDialog(message: "Введите повторно пароль")
    }
}
    
    
    
    func showAlertDialog(message: String) {
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
  
  

    }

