//
//  PlaceholdTextView.swift
//  UIComponents
//
//  Created by Hugh Bellamy on 14/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

@IBDesignable
public class PlaceholderTextView: UITextView {
    @IBInspectable public var placeholder: String = ""
    @IBInspectable public var placeholderColor: UIColor = UIColor.lightGrayColor()
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        text = placeholder
        updatePlaceholder()
        
        NSNotificationCenter.defaultCenter().addObserverForName(UITextViewTextDidBeginEditingNotification, object: self, queue: NSOperationQueue.mainQueue()) { (notification) in
            self.updatePlaceholderText()
        }
        
        NSNotificationCenter.defaultCenter().addObserverForName(UITextViewTextDidEndEditingNotification, object: self, queue: NSOperationQueue.mainQueue()) { (notification) in
            self.updatePlaceholderText()
        }
        
        NSNotificationCenter.defaultCenter().addObserverForName(UITextViewTextDidChangeNotification, object: self, queue: NSOperationQueue.mainQueue()) { (notification) in
            self.updatePlaceholderText()
        }
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    public override var text: String? {
        didSet {
            updatePlaceholder()
        }
    }
    
    public var naturalText: String {
        if let text = text {
            return (text as NSString).stringByReplacingOccurrencesOfString(placeholder, withString: "")
        }
        return ""
    }
    
    public func clearText() {
        text = ""
        updatePlaceholderText()
    }
    
    private func updatePlaceholderText() {
        if self.text == nil {
            self.text = self.placeholder
        }
        else if let text = self.text {
            if text.isEmpty || text == self.placeholder {
                self.text = self.placeholder
            } else {
                self.text = naturalText
            }
        }
        self.updatePlaceholder()
    }
    
    private func updatePlaceholder() {
        if text == placeholder {
            textColor = placeholderColor
            moveToBeginning()
        } else {
            textColor = UIColor.blackColor()
        }
    }
    
    private func moveToBeginning() {
        super.selectedTextRange = textRangeFromPosition(beginningOfDocument, toPosition: beginningOfDocument)
    }
    
    public override var selectedTextRange: UITextRange? {
        didSet {
            if text == placeholder {
                moveToBeginning()
            }
        }
    }
}
