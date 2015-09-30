//
//  MenuDisabledTextField.swift
//  UIComponents
//
//  Created by Hugh Bellamy on 05/09/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

@IBDesignable
public class MenuDisabledTextField: UITextField {
    @IBInspectable public var menuEnabled: Bool = false
    @IBInspectable public var canPositionCaretAtStart: Bool = true
    @IBInspectable public var editingRectDeltaY: CGFloat = 0
    
    public override func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool {
        return menuEnabled
    }
    
    public override func caretRectForPosition(position: UITextPosition) -> CGRect {
        if (position == beginningOfDocument && !canPositionCaretAtStart) {
            return super.caretRectForPosition(positionFromPosition(position, offset: 1)!)
        }
        return super.caretRectForPosition(position)
    }
    
    public override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 0, dy: editingRectDeltaY)
    }

}