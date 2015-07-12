//
//  BBRealmMigrationManager.swift
//  MomentsModels
//
//  Created by Harry Ng on 12/7/15.
//
//

import Foundation
import RealmSwift

public class BBRealmMigrationManager {
   
    public class func migrate() {
        setSchemaVersion(1, Realm.defaultPath) { (migration, oldSchemaVersion) in
            
            if oldSchemaVersion < 1 {
                // Video Migration
            }
        }
    }
    
}
