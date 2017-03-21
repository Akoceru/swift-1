//
//  MyDataModel.swift
//  Test1
//
//  Created by DENHAUT Axel on 21/03/2017.
//  Copyright © 2017 DENHAUT Axel. All rights reserved.
//

import Foundation

class MyDataModel : NSObject {
    var mList : Array<NSObject> = []
    
    
    func addGroup(sGroup : MyGroupModel)
    {
        mList.append(sGroup)
    }
}
