//
//  Observable.swift
//  CloudBike
//
//  Created by Le Tai on 7/13/15.
//  Copyright © 2015 Le Van Tai. All rights reserved.
//

public struct Observable<T> {
    
    typealias NotifyClosure = (value: T?) -> Void
    
    var listener: NotifyClosure?
    public var value: T? {
        didSet {
            if let listener = listener {
                listener(value: value)
            }
        }
    }
    
    mutating func onChange(listener: NotifyClosure) {
        self.listener = listener
    }
    
    public init(value: T?) {
        if let value = value {
            self.value = value
        }
        self.value = nil
    }
    
    public mutating func removeListener() {
        if let _ = listener {
            self.listener = nil
        }
    }
}