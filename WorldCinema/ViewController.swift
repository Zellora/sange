//
//  ViewController.swift
//  WorldCinema
//
//  Created by 35 кабинет on 30.11.2021.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var inputlogin: UITextField!
    
    @IBOutlet weak var inputpass: UITextField!
    
    var userDef = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        print("You token is:\(userDef.value(forKey: "token"))")
        // Do any additional setup after loading the view.
    }

    @IBAction func auth(_ sender: Any) {
        guard !inputlogin.text!.isEmpty else {
            return showAlertDialog(message: "Проверьте логин")
        }
        guard !inputpass.text!.isEmpty else {
            return showAlertDialog(message: "Проверьте пароль")
        }
        let url = "http://cinema.areas.su/auth/login=\(inputlogin.text!)&password\(inputpass.text!)"
        AF.request(url, method: .post).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let jsonToken = json["notice"]["token"].stringValue
                self.userDef.setValue(json, forKey: "token")
            case .failure(let error):
                self.showAlertDialog(message: error.localizedDescription)
            }
        }
        
//        performSegue(withIdentifier: "auth", sender: nil)
    }
    
    
    func showAlertDialog(message: String) {
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

