//
//  Video.swift
//  MomentsModels
//
//  Created by Harry Ng on 12/7/15.
//
//

import Foundation
import RealmSwift

public class Video: Object {
    
    // MARK: Properties
    
    public dynamic var realmId: String = BBUUID.UUIDString()
    public dynamic var filename: String = ""
    public dynamic var selected: Bool = false
    public dynamic var createdAt: NSDate = NSDate()
    public dynamic var updatedAt: NSDate = NSDate()
    
    override public class func primaryKey() -> String? {
        return "realmId"
    }
   
}
