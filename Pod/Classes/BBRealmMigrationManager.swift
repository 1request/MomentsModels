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
        let config = Realm.Configuration(
            schemaVersion: 1,
            
            migrationBlock: { migration, oldSchemaVersion in
                if (oldSchemaVersion < 1) {
                    
                }
            }
        )
        Realm.Configuration.defaultConfiguration = config
    }
    
}
