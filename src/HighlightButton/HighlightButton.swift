//
//  HighlightButton.swift
//  UIComponents
//
//  Created by Hugh Bellamy on 14/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

@IBDesignable
public class HighlightButton: UIButton {
    private var normalBackgroundColor: UIColor!
    
    @IBInspectable public var highlightedBackgroundColor: UIColor = UIColor.lightGrayColor()
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        normalBackgroundColor = backgroundColor
    }
    
    public override var highlighted: Bool {
        didSet {
            if highlighted {
                backgroundColor = highlightedBackgroundColor
            } else {
                backgroundColor = normalBackgroundColor
            }
        }
    }
}
