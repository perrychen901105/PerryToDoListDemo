//
//  CategoryListViewController.swift
//  PerryToDoListDemo
//
//  Created by Perry Z Chen on 12/7/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import UIKit

class CategoryListViewController: UIViewController {

    fileprivate var categoryViewModel: CategoryListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Category"
        self.categoryViewModel = CategoryListViewModel()
        let viewModelRequest = BaseRequestModel()
        self.categoryViewModel.getAllCategories(viewModelRequest, success: {
        
        }, failure: { (str: String) in
        
        })
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


