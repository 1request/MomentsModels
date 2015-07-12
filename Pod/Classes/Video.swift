//
//  Video.swift
//  MomentsModels
//
//  Created by Harry Ng on 12/7/15.
//
//

import Foundation
import RealmSwift

class Video: Object {
    
    // MARK: Properties
    
    dynamic var realmId: String = BBUUID.UUIDString()
    dynamic var filename: String = ""
    dynamic var selected: Bool = false
    dynamic var createdAt: NSDate = NSDate()
    dynamic var updatedAt: NSDate = NSDate()
   
}
