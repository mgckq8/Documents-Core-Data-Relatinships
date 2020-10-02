//
//  Expense+CoreDataClass.swift
//  Documents Core Data Relatinships
//
//  Created by Melissa Crozier on 10/1/20.
//  Copyright © 2020 Melissa Crozier. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Expense)
public class Expense: NSManagedObject {
    var date: Date? {
        get {
            return rawDate as Date?
        }
        set {
            rawDate = newValue as NSDate? as Date? // as Date? not in their code
        }
    }
    
    convenience init?(name: String?, amount: Double, date: Date?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Expense.entity(), insertInto: context)
        
        self.name = name
        self.attribute = attribute
        self.date = date
    }
}
