//
//  UIView+Autolayout.swift
//  Slater
//
//  Created by Hugh Bellamy on 14/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

public extension UIView {
    public func fillSuperview() {
        fillView(superview)
    }
    
    public func fillView(view: UIView?) {
        if let view = view {
            translatesAutoresizingMaskIntoConstraints = false
            
            let topConstraint = NSLayoutConstraint(item: self, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1, constant: 0)
            let bottomConstraint = NSLayoutConstraint(item: self, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1, constant: 0)
            let leftConstraint = NSLayoutConstraint(item: self, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1, constant: 0)
            let rightConstraint = NSLayoutConstraint(item: self, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1, constant: 0)
            
            view.addConstraints([ topConstraint, bottomConstraint, leftConstraint, rightConstraint])
            updateConstraints()
        }
    }
}
