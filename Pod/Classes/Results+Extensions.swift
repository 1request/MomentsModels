//
//  Results+Extensions.swift
//  Pods
//
//  Created by Harry Ng on 8/3/2016.
//
//

import Foundation
import RealmSwift

extension Results {
    
    func toArray<T>(ofType: T.Type) -> [T] {
        var array = [T]()
        for result in self {
            if let result = result as? T {
                array.append(result)
            }
        }
        return array
    }
    
}
