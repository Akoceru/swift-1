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
        if(mSegmentedBar?.selectedSegmentIndex == 0){
            mTitleLabel?.textColor = UIColor.init(red: 0, green: 0, blue: 1.0, alpha: 1)
        }else if(mSegmentedBar?.selectedSegmentIndex == 1){
            mTitleLabel?.textColor = UIColor.init(red: 1.0, green: 0, blue: 0, alpha: 1)
        }else{
            mTitleLabel?.textColor = UIColor.init(red: 0, green: 1.0, blue: 0, alpha: 1)
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

