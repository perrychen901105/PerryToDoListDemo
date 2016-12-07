//
//  ResultModel.swift
//  PerryToDoListDemo
//
//  Created by Perry Z Chen on 12/7/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import Foundation
import ObjectMapper
class ResultModel<T: Mappable>: Mappable {
    var resultArray: [T]?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        resultArray <- map["data"]
    }
}
