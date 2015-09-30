//
//  UIAlertController+Alerts.swift
//  Slater
//
//  Created by Hugh Bellamy on 26/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

public typealias AlertActionHandler = ((UIAlertAction!) -> Void)!

public extension UIAlertController {
    public class func simpleAlert(title: String, message: String, cancelButtonHandler: AlertActionHandler?) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addOKButton(handler: cancelButtonHandler)
        return alertController
    }
    
    public class func simpleDeleteAlert(title: String, message: String, cancelButtonHandler: AlertActionHandler?, deleteButtonHandle: AlertActionHandler?) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addCancelButton(handler: cancelButtonHandler)
        alertController.addDestructionButton(handler: deleteButtonHandle)
        return alertController
    }
    
    public class func simpleOKAlert(title: String, message: String, cancelButtonHandler: AlertActionHandler?, okButtonHandler: AlertActionHandler?) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addCancelButton(handler: cancelButtonHandler)
        alertController.addOKButton(handler: okButtonHandler)
        return alertController
    }
    
    public func addOKButton(title: String = "OK", handler: AlertActionHandler?) {
        addAction(UIAlertAction(title: title, style: UIAlertActionStyle.Default, handler: handler))
    }
    
    public func addDestructionButton(title: String = "Delete", handler: AlertActionHandler?) {
        addAction(UIAlertAction(title: title, style: UIAlertActionStyle.Destructive, handler: handler))
    }
    
    public func addCancelButton(title: String = "Cancel", handler: AlertActionHandler?) {
        addAction(UIAlertAction(title: title, style: UIAlertActionStyle.Cancel, handler: handler))
    }
}