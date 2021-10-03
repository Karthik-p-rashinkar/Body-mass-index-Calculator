//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Karthik Rashinkar on 03/10/21.
//

import Foundation
import UIKit
class ResultViewController: UIViewController{
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    //@IBOutlet weak var adviceLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    //@IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var bmiLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLable.text = bmiValue
        adviceLable.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }



}
