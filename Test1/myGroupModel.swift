//
//  MyGroupModel.swift
//  Test1
//
//  Created by DENHAUT Axel on 21/03/2017.
//  Copyright © 2017 DENHAUT Axel. All rights reserved.
//

import Foundation
import UIKit

class MyGroupModel : NSObject {
    var mTitle : String = ""
    
    var mList : Array <NSObject> = []
    
    var mImage : UIImage?
    
    
    class func createWithTitle(sTitleLocalizationKey: String, withAssetName sImageName: String, withCellNumber sNumber:Int)->MyGroupModel{
        let rObject = MyGroupModel()
        rObject.mTitle = NSLocalizedString(sTitleLocalizationKey, comment: "")
        rObject.mImage = UIImage.init(named: sImageName)
        
        for i in 0 ..< sNumber{
            let j : Int = i*i
            let tCell = MyCellModel.createMyCellWithTitle(sTitle: rObject.mTitle, sSubtitle: " sqr=\(j)")
            rObject.mList.append(tCell)
        }
    
        return rObject
    }
}
