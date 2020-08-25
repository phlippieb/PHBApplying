//
//  Appliable.swift
//  PHBApplying
//
//  Created by Phlippie Bosman on 2019/08/09.
//

import Foundation

/// Conforming types inherit the default `apply` and `applying` methods.
public protocol Appliable {}

/// Default `apply` methods.
extension Appliable {
    /// A type for a closure that gets applied to a receiver.
    public typealias Applier = (Self) -> Void
    
    /// Apply the given closure to the receiver.
    public func apply(_ applier: Applier) {
        applier(self)
    }
    
    /// Apply the given closure to the receiver, then return the receiver.
    public func applying(_ applier: Applier) -> Self {
        applier(self)
        return self
    }
}

// Conform common types to Appliable

extension NSObject: Appliable {}
