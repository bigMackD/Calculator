//
//  ViewController.swift
//  Calculator
//
//  Created by Maciej Drozdowicz on 13/02/2018.
//  Copyright © 2018 Maciej Drozdowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var x = 0.0
    var y = 0.0
    var wynik = 0.0
    var mod = 0,mult = 0,div = 0,plus = 0,minus = 0
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func modTapped(_ sender: UIButton) {
        x = Double(resultLabel.text!)!
        resultLabel.text = ""
        mod = 1
    }
    @IBAction func ACTapped(_ sender: UIButton) {
        resultLabel.text = ""
        mod = 0; mult = 0; div = 0; plus = 0; minus = 0;
    }
    @IBAction func equalsTapped(_ sender: UIButton) {
        y = Double(resultLabel.text!)!
        if(mod == 1)
        {
          wynik = x.truncatingRemainder(dividingBy: y)
        }
        else if (mult == 1)
        {
             wynik = x*y
        }
        else if (div==1)
        {
             wynik = x/y
        }
        else if(plus == 1)
        {
            wynik = x+y
        }
        else if(minus == 1)
        {
             wynik = x-y
        }
        resultLabel.text = String(wynik)
    }
    @IBAction func sevenTapped(_ sender: UIButton) {
        resultLabel.text?.append("7")
    }
    @IBAction func eightTapped(_ sender: UIButton) {
          resultLabel.text?.append("8")
    }
    @IBAction func nineTapped(_ sender: UIButton) {
          resultLabel.text?.append("9")
    }
    @IBAction func sixTapped(_ sender: UIButton) {
          resultLabel.text?.append("6")
    }
    @IBAction func fiveTapped(_ sender: UIButton) {
          resultLabel.text?.append("5")
    }
    @IBAction func fourTapped(_ sender: UIButton) {
          resultLabel.text?.append("4")
    }
    @IBAction func threeTapped(_ sender: UIButton) {
          resultLabel.text?.append("3")
    }
    @IBAction func twoTapped(_ sender: UIButton) {
          resultLabel.text?.append("2")
    }
    @IBAction func oneTapped(_ sender: UIButton) {
          resultLabel.text?.append("1")
    }
    @IBAction func zeroTapped(_ sender: UIButton) {
         resultLabel.text?.append("0")
    }
    @IBAction func minusTapped(_ sender: UIButton) {
        x = Double(resultLabel.text!)!
        resultLabel.text = ""
        minus = 1
        
    }
    @IBAction func plusTapped(_ sender: UIButton) {
        x = Double(resultLabel.text!)!
        resultLabel.text = ""
        plus = 1
    }
    @IBAction func divTapped(_ sender: UIButton) {
        x = Double(resultLabel.text!)!
        resultLabel.text = ""
        div = 1
    }
    @IBAction func multTapped(_ sender: UIButton) {
        x = Double(resultLabel.text!)!
        resultLabel.text = ""
        mult = 1
    }
}


