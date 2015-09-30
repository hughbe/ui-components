//
//  StoryboardLoadable.swift
//  Slater
//
//  Created by Hugh Bellamy on 02/09/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

import Foundation

public protocol NibLoadable {
    static var nibIdentifier: String { get }
}

public extension NibLoadable {
    public static func standardView() -> Self {
        return NSBundle.mainBundle().loadNibNamed(Self.nibIdentifier, owner: nil, options: nil).first as! Self
    }
}

public protocol StoryboardLoadable {
    static var storyboardIdentifier: String { get }
}
