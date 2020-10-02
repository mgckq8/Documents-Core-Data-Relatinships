//
//  Category+CoreDataClass.swift
//  Documents Core Data Relatinships
//
//  Created by Melissa Crozier on 10/1/20.
//  Copyright © 2020 Melissa Crozier. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Category)
public class Category: NSManagedObject {
    var expenses: [Expense]? {
        return self.rawExpenses?.array as? [Expense]
    }
    
    convenience init?(title: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Category.entity(), insertInto: context)
        self.title = title
        
    }
    
}
