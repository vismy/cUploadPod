//
//  RealmManager.swift
//  cvTestPod
//
//  Created by ChildFolio on 2018/6/21.
//  Copyright © 2018年 ChildFolio. All rights reserved.
//

import Foundation
import RealmSwift


class RealmManager {
    
    var realm: Realm
    
    private init(){
        
        let config = Realm.Configuration(
            schemaVersion: 52,
            migrationBlock: { migration, oldSchemaVersion in
                if (oldSchemaVersion < 52) {
                }
        })
        
        do {
            realm = try Realm(configuration: config)
        } catch _ as NSError {
            do{
                try FileManager.default.removeItem(atPath: (Realm.Configuration.defaultConfiguration.fileURL?.absoluteString)!)
                realm = try Realm.init(configuration: config)
            }
            catch _ as NSError{
                realm = try! Realm()
            }
        }
        
     
    }
    
    
    
    public func fetchObject(obj:Object.Type) -> Object?{
        return realm.objects(obj).first
    }
    
    public func fetchObjects(obj:Object.Type,sorted:Bool = false,sortBy:String = "") -> Results<Object>{
        if sorted {
            return realm.objects(obj).sorted(byKeyPath: sortBy,ascending:false)
        }
        return realm.objects(obj)
    }
    
    public func fetchObject(obj:Object.Type, filter:String) -> Object? {
        return realm.objects(obj).filter(filter).first
    }
    
    public func fetchObjects(obj:Object.Type, filter:String,sorted:Bool = false,sortBy:String = "") -> Results<Object>{
        if sorted {
            return realm.objects(obj).filter(filter).sorted(byKeyPath: sortBy,ascending:false)
        }
        return realm.objects(obj).filter(filter)
    }
    
    
    public func addObject(obj:Object, update:Bool = false) {
        try! realm.write({
            realm.add(obj,update: update)
        })
        
    }
    
    public func addObjects(objs:Array<Object>, update:Bool = false) {
        try! realm.write {
            realm.add(objs,update:update)
        }
        
    }
    
    public func removeObject(obj:Object){
        try! realm.write {
            realm.delete(obj)
        }
        
        
    }
    
    public func removeObjects(objs:Array<Object>){
        try! realm.write {
            realm.delete(objs)
        }
        
    }
    
    public func removeAll(){
        try! realm.write({
            realm.deleteAll()
        })
      
    }
    
    
    
    
}
