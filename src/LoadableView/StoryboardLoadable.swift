//
//  StoryboardLoadable.swift
//  Slater
//
//  Created by Hugh Bellamy on 02/09/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

import Foundation

public protocol StoryboardLoadable {
    static var storyboardIdentifier: String { get }
}

public extension StoryboardLoadable {
    public static func standardController() -> Self {
        return UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier(Self.storyboardIdentifier) as! Self
    }
}

public extension UIViewController {
    public var modalNavigationController: UINavigationController {
        let navigationController = UINavigationController(rootViewController: self)
        
        navigationController.modalPresentationStyle = modalPresentationStyle
        navigationController.modalTransitionStyle = modalTransitionStyle
        
        return navigationController
    }
}