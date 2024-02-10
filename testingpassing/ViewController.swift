//
//  ViewController.swift
//  testingpassing
//
//  Created by ToTo  on 26/10/23.
//

import UIKit
protocol passDataDelegate : AnyObject {
    func passdata(text: String)
}
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var firstlb: UILabel!
    weak var delegate : passDataDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstTextField.delegate = self
        
    }

    @IBAction func gonext(_ sender: Any) {
        performSegue(withIdentifier: "goto", sender: nil)
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goto", let secvc = segue.destination as? SecViewVC{
            secvc.carrydata = firstTextField.text ?? ""
            secvc.carrydatalabl = firstlb.text ?? ""
        }
    }
    
    //mestesting again
}

