//
//  BaseViewModel.swift
//  CloudBike
//
//  Created by Le Tai on 7/25/15.
//  Copyright © 2015 Le Van Tai. All rights reserved.
//

public protocol BaseViewModelable {
    func removeListeners()
}

public class BaseViewModel {
    
    public init() {}
    
    public var error = Observable(value: NSError(domain: "com.levantAJ.Observable", code: -1001, userInfo: nil))
    
    public func removeListeners() {
        error.removeListener()
    }
    
    public func handleError(error: NSError?) {
        self.error.value = error
    }

}
