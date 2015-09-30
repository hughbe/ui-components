//
//  HighlightSideBorderedButton.swift
//  Slater
//
//  Created by Hugh Bellamy on 28/09/2015.
//  Copyright © 2015 Hugh Bellamy. All rights reserved.
//

import Foundation

public class HighlightSideBorderedButton: SideBorderedButton {
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
