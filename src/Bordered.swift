//
//  Bordered.swift
//  UIComponents
//
//  Created by Hugh Bellamy on 14/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

@IBDesignable
public class BorderedView: UIView {
    @IBInspectable public var borderWidth: CGFloat = 1.0 { didSet { layer.borderWidth = borderWidth } }
    
    @IBInspectable var borderColor: UIColor = UIColor.blackColor() { didSet { layer.borderColor = borderColor.CGColor } }
}

@IBDesignable
public class BorderedButton: UIButton {
    @IBInspectable public var borderWidth: CGFloat = 1.0 { didSet { layer.borderWidth = borderWidth } }
    
    @IBInspectable var borderColor: UIColor = UIColor.blackColor() { didSet { layer.borderColor = borderColor.CGColor } }
}