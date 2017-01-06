//
//  TestAppModel.swift
//  PerryToDoListDemo
//
//  Created by Perry Z Chen on 1/6/17.
//  Copyright © 2017 Perry Z Chen. All rights reserved.
//

import Foundation
import ObjectMapper

class TestAppModel: Mappable {
    
    var assessment: String?
    var desc: String?
    var detail: String?
    
    required init?(map: Map) {
        self.assessment = ""
        self.detail = ""
        self.desc = ""
    }
    
    func mapping(map: Map) {
        self.assessment <- map["values.assessment"]
        self.detail <- map["values.detail"]
        self.desc <- map["values.description"]
    }
}
