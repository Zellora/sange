//
//  ScrollScreenViewController.swift
//  WorldCinema
//
//  Created by 35 кабинет on 30.11.2021.
//

import UIKit

class ScrollScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func film (_ sender: Any){
        
        performSegue(withIdentifier: "film", sender: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
