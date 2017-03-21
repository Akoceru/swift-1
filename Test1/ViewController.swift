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
    
    @IBOutlet var mSegmentedBarB : UISegmentedControl?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mTitleLabel?.text = "Axel"
        ChangeColor(sSender: mSegmentedBar!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func IamNotRich() {
        mTitleLabel?.text = "0€"
    }
    @IBAction func ChangeColor(sSender : UISegmentedControl){
        NSLog("test")
        switch sSender.selectedSegmentIndex {
        case 0:
            if (sSender == mSegmentedBar) {
                mTitleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            }
            else if (sSender == mSegmentedBarB){
                mTitleLabel?.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
            }
            break
        case 1:
            if (sSender == mSegmentedBar) {
                mTitleLabel?.textColor = UIColor.init(red: 1.0, green: 0, blue: 0, alpha: 1)
            }
            else if (sSender == mSegmentedBarB){
                mTitleLabel?.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            }
            break
        case 2:
            if (sSender == mSegmentedBar) {
                mTitleLabel?.textColor = UIColor.init(red: 0, green: 1.0, blue: 0, alpha: 1)
            }
            else if (sSender == mSegmentedBarB){
                mTitleLabel?.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
            }
            break
        default:
            if (sSender == mSegmentedBar) {
                mTitleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            }
            else if (sSender == mSegmentedBarB){
                mTitleLabel?.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
            }
            
        }
        
    }

    
    
}

