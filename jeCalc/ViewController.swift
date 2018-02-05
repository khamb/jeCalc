//
//  ViewController.swift
//  jeCalc
//
//  Created by Khadim Mbaye on 2/4/18.
//  Copyright © 2018 Khadim Mbaye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    func calculate(l: Int, r: Int, sign: String) -> Int {
        var result: Int = 0
        switch sign {
        case "+":
            result = l+r
        case "-":
            result = l-r
        case "x":
            result = l*r
        case "÷":
            result = l/r
        default:
            break
        }
        return result
    }
    
    @IBAction func getResult(_ sender: UIButton) {
        let chain: String = resultLabel.text!
        var left: String = ""
        var right: String = ""
        var sign: String = ""
        
        for c in chain {
            if c != "+" && c != "-" && c != "÷" && c != "x" && sign == "" {
                left += String(c)
            } else if c != "+" && c != "-" && c != "÷" && c != "x" && sign != "" {
                right = String(c)
            }else {
                sign = String(c)
            }
        }
        
        
        resultLabel.text! = String(calculate(l: Int(left)!, r: Int(right)!, sign: sign))
        

        
    }
    
    @IBAction func clearButton(_ sender: Any) {
        resultLabel.text! = "0"
    }
    
    @IBAction func onNumberPressed(_ sender: UIButton) {
        
        if resultLabel.text! == "0" {
            resultLabel.text! = sender.currentTitle!
        }else{
            resultLabel.text! = resultLabel.text! + sender.currentTitle!
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

