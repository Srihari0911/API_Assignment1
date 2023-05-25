//
//  ViewController.swift
//  API-Assignment
//
//  Created by Sri hari on 24/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func getApi1(_ sender: Any) {
        Task {
            print(await NoctuaSkyHelper.fetch())
        }
    }
    
    @IBAction func getApi2(_ sender: Any) {
        Task {
            print(await VehicleApiHelper.fetch())
        }
        
    }
    
    
    @IBAction func getApi3(_ sender: Any) {
        Task {
            print(await ModelsAPIHelper.fetch())
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

