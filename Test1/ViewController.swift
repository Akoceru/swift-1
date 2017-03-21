//
//  ViewController.swift
//  Test1
//
//  Created by DENHAUT Axel on 20/03/2017.
//  Copyright © 2017 DENHAUT Axel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var mTitleLabel : UILabel?

    @IBOutlet var mSegmentedBar : UISegmentedControl?
    
    @IBOutlet var mSegmentedBarB : UISegmentedControl?
    
    @IBOutlet var mTableView : UITableView?
    
    var mData : MyDataModel = MyDataModel()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let tGroup : MyGroupModel = mData.mList[section] as! MyGroupModel
        return tGroup.mList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let tCell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        let tGroup : MyGroupModel = mData.mList[indexPath.section] as! MyGroupModel
        let tCellData : MyCellModel = tGroup.mList[indexPath.row] as! MyCellModel
        
        tCell.textLabel?.text = tCellData.mTitle
        tCell.detailTextLabel?.text = tCellData.mSubtitle
        tCell.imageView?.image = tGroup.mImage
        return tCell
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return mData.mList.count
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        let tGroup : MyGroupModel = mData.mList[section] as! MyGroupModel
        return tGroup.mTitle
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mTitleLabel?.text = "Axel"
        ChangeColor(sSender: mSegmentedBar!)
        mData.addGroup(sGroup: MyGroupModel.createWithTitle(sTitleLocalizationKey: "PlatinumTitleKey", withAssetName: "platinum", withCellNumber: 10))
        mData.addGroup(sGroup: MyGroupModel.createWithTitle(sTitleLocalizationKey: "HiorophantTitlekey", withAssetName: "hiero", withCellNumber: 10))
        mData.addGroup(sGroup: MyGroupModel.createWithTitle(sTitleLocalizationKey: "ChariotTitleKey", withAssetName: "chariot", withCellNumber: 10))
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

