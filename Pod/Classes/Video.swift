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
    
    // =================
    // MARK: - Constants
    // =================
    
    public static let realm = Video.realmInstance()
    
    private class func realmInstance() -> Realm {
        var realm:Realm!
        do { try realm = Realm() } catch let error { print("Realm Init Error! \(error)") }
        return realm
    }
    
    // MARK: Properties
    
    public dynamic var realmId: String = BBUUID.UUIDString()
    public dynamic var filename: String = ""
    public dynamic var selected: Bool = false
    public dynamic var createdAt: NSDate = NSDate()
    public dynamic var updatedAt: NSDate = NSDate()
    
    override public class func primaryKey() -> String? {
        return "realmId"
    }
    
    // MARK: - Query
    
    public class func withId(id: String) -> Video? {
        return realm.objectForPrimaryKey(Video.self, key: id)
    }
    
    public class func videosSelected(inRealm realm: Realm = Video.realm) -> [Video] {
        let videos = realm.objects(Video).filter("selected = true")
        return videos.toArray(Video.self)
    }
    
    public class func videoForFilename(filename: String, inRealm realm: Realm = Video.realm) -> Video? {
        let result = realm.objects(Video).filter("filename = %@", filename)
        return result.first
    }
    
    public class func isVideoExisted(date: NSDate) -> Bool {
        let todayVideos = self.realm.objects(Video).filter("createdAt >= %@ and createdAt < %@", date.beginningOfDay(), date.endOfDay())
        return todayVideos.count > 0
    }
    
    // MARK: - Create or Update
    
    public func createOrUpdate() {
        let realm = Video.realm
        try! realm.write {
            realm.add(self, update: true)
        }
    }
   
}
