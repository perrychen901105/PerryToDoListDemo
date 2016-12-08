//
//  CategoryModel.swift
//  PerryToDoListDemo
//
//  Created by Perry Z Chen on 12/7/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import Foundation
import ObjectMapper
class CategoryModel: Mappable {
    var categoryId: String?
    var title: String?
    var content: String?
    var counts: Int
    
    required init?(map: Map) {
        self.categoryId = ""
        self.title = ""
        self.counts = 0
        self.content = ""
    }
    
    func mapping(map: Map) {
        self.categoryId <- map["id"]
        self.title <- map["title"]
        self.content <- map["content"]
        self.counts <- (map["counts"], transfromOfIntAndString())
    }
}

extension CategoryModel: CustomStringConvertible {
    var description: String {
        return "\(self.categoryId), \(self.title), \(self.content), \(self.counts)"
    }
}
