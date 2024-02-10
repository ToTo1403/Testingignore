//
//  SecViewVC.swift
//  testingpassing
//
//  Created by ToTo  on 7/1/24.
//

import Foundation
import UIKit
class SecViewVC : UIViewController,passDataDelegate {
    func passdata(text: String) {
        carrydata = text
        print(carrydata,"carrydata")
        if let destinationVC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
                destinationVC.delegate = self
                navigationController?.pushViewController(destinationVC, animated: true)
            }
    }
    var carrydata = ""
    var carrydatalabl = ""
    @IBOutlet weak var secTextField: UITextField!
    @IBOutlet weak var secLB: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        secLB.text = carrydata
        secTextField.text = carrydatalabl
        
    }
}
