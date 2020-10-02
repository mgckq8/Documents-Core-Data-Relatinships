//
//  Expense+CoreDataProperties.swift
//  Documents Core Data Relatinships
//
//  Created by Melissa Crozier on 10/1/20.
//  Copyright © 2020 Melissa Crozier. All rights reserved.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var name: String?
    @NSManaged public var attribute: Double
    @NSManaged public var rawDate: Date?
    @NSManaged public var category: Category?

}
