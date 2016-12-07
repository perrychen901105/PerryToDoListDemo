//
//  RequestModel.swift
//  PerryToDoListDemo
//
//  Created by Perry Z Chen on 12/7/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import Foundation
import ObjectMapper
class BaseRequestModel: Mappable {
    
    init() {
        
    }
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
    }
}

class RequestTodoListByCategoryModel: Mappable {
    var categoryId: String?
    
    init() {
        
    }
    
    required init?(map: Map) {
        self.categoryId = ""
    }
    
    func mapping(map: Map) {
        self.categoryId <- map["category"]
    }
}
