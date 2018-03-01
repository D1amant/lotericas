//
//  ViewController.swift
//  Loteria
//
//  Created by Luis Fernando Rodrigues  on 28/02/18.
//  Copyright © 2018 Luis Fernando Rodrigues . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbGameType: UILabel!
    @IBOutlet weak var scGameType: UISegmentedControl!
    @IBOutlet var balss: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func genetateGame() {
        let loteriaHelper =  LoteriaHelper()
        var numbers : [Int] = [];
        switch scGameType.selectedSegmentIndex {
            case 0:
                numbers = loteriaHelper.getNumbers(max: 15, type :5)
                balss.last?.isHidden = false
                lbGameType.text = "Mega Sena"
            //show popular view
            case 1:
                numbers = loteriaHelper.getNumbers(max: 15, type: 4)
                balss.last?.isHidden = true
                lbGameType.text = "Quina"
            //show history view
            default:
    
            break;
        }
        var i = 0
        for number in numbers{
            balss[i].setTitle(String(number), for: .normal)
            i = i + 1;
        }
    }

    
}

