//
//  ViewController.swift
//  Test1
//
//  Created by DENHAUT Axel on 20/03/2017.
//  Copyright © 2017 DENHAUT Axel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mTitleLabel : UILabel?

    @IBOutlet var mSegmentedBar : UISegmentedControl?
    
    @IBAction func ChangeColor(){
        NSLog("test")
        switch mSegmentedBar!.selectedSegmentIndex {
        case 0:
            mTitleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            break
        case 1:
            mTitleLabel?.textColor = UIColor.init(red: 1.0, green: 0, blue: 0, alpha: 1)
            break
        case 2:
            mTitleLabel?.textColor = UIColor.init(red: 0, green: 1.0, blue: 0, alpha: 1)
            break
        default:
            mTitleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mTitleLabel?.text = "Axel"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func IamNotRich() {
        mTitleLabel?.text = "0€"
    }

    
}

