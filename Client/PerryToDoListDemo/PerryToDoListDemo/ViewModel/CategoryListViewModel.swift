//
//  CategoryListViewModel.swift
//  PerryToDoListDemo
//
//  Created by Perry Z Chen on 12/7/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class CategoryListViewModel: NSObject {
    var dataRequest: DataRequest?
    var categoryList: [CategoryModel] = [CategoryModel]()
    
    func categoryNums() -> Int {
        return self.categoryList.count
    }
    
    func getStatusForRow(index: Int) {
        
    }
    
    func getContentForRow(index: Int) -> CategoryModel {
        return self.categoryList[index]
    }
}

extension CategoryListViewModel: BaseViewModelProtocol {
    func getAllCategories(_ parameters: Mappable, success: @escaping ()->Void, failure:@escaping (_ str: String) -> Void) {
        let URL = HttpAssist.getRequestURL(.FetchCategoryList)
        
        self.dataRequest = requestData(url: URL(), parameters: parameters.toJSON() as [String : AnyObject], methods: HTTPMethod.get, responseBlock: {[weak self] (result) in
            if result.success {
                let resultModel: ResultModel? = Mapper<ResultModel<CategoryModel>>().map(JSONString: result.resultString)
                if let modelArr = resultModel?.resultArray {
                    if let strongSelf = self {
                        strongSelf.categoryList = modelArr
                        print(strongSelf.categoryList)
                        success()
                        return
                    }
                }
            }
            failure("sorry failed")
        })
    }
    
    func cancelRequest() {
        if let request = self.dataRequest{
            request.cancel()
        }
    }
}
