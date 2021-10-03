import Foundation
import UIKit
class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var hightLable1: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        hightLable1.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let w = String(format: "%.0f", sender.value)
        weightLabel.text = "\(w)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let h = heightSlider.value
        let w = weightSlider.value
        
        calculatorBrain.calculateBMI(height : h, weight : w)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
        
    }
    
}
