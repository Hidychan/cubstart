//
//  ViewController.swift
//  CounterApp1
//
//  Created by Hidy Chan on 2/14/22.
//

import UIKit

class ViewController: UIViewController {
    var countNum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        count.text = String(countNum)
    }

    @IBOutlet weak var count: UILabel!
    
    @IBAction func decrement(_ sender: Any) {
        countNum -= 1
        count.text = String(countNum)
    }
    
    @IBAction func increment(_ sender: Any) {
        countNum += 1
        count.text = String(countNum)
    }
    
    @IBAction func hundred(_ sender: Any) {
        countNum = 100
        count.text = String(countNum)
    }
    
}

