//
//  ViewController.swift
//  project1
//
//  Created by Ap on 24.09.17.
//  Copyright © 2017 Pampushko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnResult: UITextField!
    var result = Float()
    var currentNumb = Float()
    var currentOp = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        currentOp = "="
        btnResult.text = ("\(result)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNumberinput(_ sender: UIButton) {
        let temp = Int(sender.titleLabel!.text!)
        currentNumb = currentNumb * 10 + Float(temp!)
        btnResult.text = ("\(currentNumb)")
    }

    @IBAction func btnOperation(_ sender: UIButton) {
        switch currentOp {
        case "=":
            result = result + currentNumb
        case "+":
            result = result + currentNumb
        case "-":
            result = result - currentNumb
        case "*":
            result = result * currentNumb
        case "/":
            result = result / currentNumb

        default:
            print("error")
        }
        currentNumb = 0
        btnResult.text=("\(result)")
        currentOp = sender.titleLabel!.text! as String
    }
    
    @IBAction func btnClr(_ sender: UIButton) {
        currentNumb=0
        currentOp = "="
        result=0
        btnResult.text="0"
        
    }
}

