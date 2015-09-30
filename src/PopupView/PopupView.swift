//
//  PopupView.swift
//  Slater
//
//  Created by Hugh Bellamy on 11/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

import UIKit

private struct PopupViewConstants {
    static let NibName = "PopupView"
}

@IBDesignable
class PopupView: UIView, NibLoadable {
    static var nibIdentifier = "PopupView"
    
    @IBInspectable var borderWidth: CGFloat = 1.5
    @IBInspectable var borderColor: UIColor = UIColor.blackColor()
    
    @IBInspectable var cornerRadius: CGFloat = 2
    @IBInspectable var bubbleBackgroundColor: UIColor = UIColor.whiteColor()
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        layer.masksToBounds = true
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.CGColor
    }
}
