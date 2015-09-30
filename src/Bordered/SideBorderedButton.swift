//
//  SideBorderedButton.swift
//  UIComponents
//
//  Created by Hugh Bellamy on 14/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

@IBDesignable
public class SideBorderedButton: UIButton  {
    @IBInspectable public var borderWidth: CGFloat = 0
    @IBInspectable public var borderColor: UIColor = UIColor.blackColor()
    
    @IBInspectable public var showsTopBorder: Bool = false
    @IBInspectable public var showsBottomBorder: Bool = false
    @IBInspectable public var showsLeftBorder: Bool = false
    @IBInspectable public var showsRightBorder: Bool = false
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        if (showsTopBorder || showsBottomBorder || showsLeftBorder || showsRightBorder) && borderWidth == 0 {
            borderWidth = 1
        }
        
        if showsTopBorder {
            addTopBorder(borderWidth, color: borderColor)
        }
        if showsBottomBorder {
            addBottomBorder(borderWidth, color: borderColor)
        }
        if showsLeftBorder {
            addLeftBorder(borderWidth, color: borderColor)
        }
        if showsRightBorder {
            addRightBorder(borderWidth, color: borderColor)
        }
    }
}
