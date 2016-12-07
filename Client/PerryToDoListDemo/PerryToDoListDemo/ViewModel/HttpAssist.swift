//
//  HttpAssist.swift
//  PerryToDoListDemo
//
//  Created by Perry Z Chen on 12/7/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import Foundation
private enum HTTPDomain: String {
    case BaseURL = "http://localhost:8888/todolist/"
    case TestURL = "http://localhost:8888/respon.json"
}

enum HttpAssist: String {
    case FetchCategoryList,ReportHC,ReportYTDH,ReportMA,ReportYTDA,ReportLOSPIE,ReportLOS, Original, Test
    
    fileprivate func combineString(str: String) -> String {
        return HTTPDomain.BaseURL.rawValue + str
    }
    
    func getRequestURL() -> String {
        switch self {
        case .FetchCategoryList:
            return combineString(str: "fetchCategories.php")
        case .ReportHC:
            return combineString(str: "hc")
        case .ReportYTDH:
            return combineString(str: "ytdh")
        case .ReportMA:
            return combineString(str: "ma")
        case .ReportYTDA:
            return combineString(str: "ytda")
        case .ReportLOSPIE:
            return combineString(str: "lospie")
        case .ReportLOS:
            return combineString(str: "los")
        case .Original:
            return combineString(str: "")
        case .Test:
            return HTTPDomain.TestURL.rawValue
        }
    }
}
