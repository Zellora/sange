//
//  FilmViewController.swift
//  WorldCinema
//
//  Created by 35 кабинет on 30.11.2021.
//

import UIKit
import SwiftyJSON
import Alamofire

class FilmViewController: UIViewController {

    @IBOutlet weak var tfilm: UILabel!
    
    @IBOutlet weak var opisanie: UILabel!
    var film = ""
    var about = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "http://cinema.areas.su/movies/{1}\(film)&\(about)"
        AF.request(url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let film = json["name"].stringValue
                let about = json["escription"].stringValue
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
                
            }
            
            self.tfilm.text! = self.film
            self.opisanie.text! = self.about
            
            
        }
        // Do any additional setup after loading the view.
    }
    

    

}
