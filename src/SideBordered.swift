//
//  SideBordered.swift
//  UIComponents
//
//  Created by Hugh Bellamy on 14/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

@IBDesignable
public class SideBorderedView: UIView  {
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

extension UIView {
    func addTopBorder(width: CGFloat, color: UIColor = UIColor.blackColor()) {
        addBorder(color, frame: CGRect(x: 0, y: 0, width: frame.width, height: width))
    }
    
    func addBottomBorder(width: CGFloat, color: UIColor = UIColor.blackColor()) {
        addBorder(color, frame: CGRect(x: 0, y: frame.height - width, width: frame.width, height: width))
    }
    
    func addLeftBorder(width: CGFloat, color: UIColor = UIColor.blackColor()) {
        addBorder(color, frame: CGRect(x: 0, y: 0, width: width, height: frame.height))
    }
    
    func addRightBorder(width: CGFloat, color: UIColor = UIColor.blackColor()) {
        addBorder(color, frame: CGRect(x: frame.width / 2 + 8, y: 0, width: width, height: frame.height))
    }
    
    private func addBorder(color: UIColor, frame: CGRect) {
        let border = CALayer()
        border.backgroundColor = color.CGColor
        border.frame = frame
        
        layer.addSublayer(border)
        //layer.masksToBounds = true
    }
}
