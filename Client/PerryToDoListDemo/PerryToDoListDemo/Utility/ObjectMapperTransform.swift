//
//  ObjectMapperTransform.swift
//  PerryToDoListDemo
//
//  Created by Perry Z Chen on 12/7/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import Foundation
import ObjectMapper
func transfromOfIntAndString() ->TransformOf<Int , String>{
    return TransformOf<Int, String>.init(fromJSON: { (JSONString) -> Int? in
        return Int(JSONString!)
    }, toJSON: { (value) -> String? in
        if let value = value {
            return String(value)
        }
        return nil
    })
}
