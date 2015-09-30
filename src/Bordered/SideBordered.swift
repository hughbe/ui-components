//
//  SideBordered.swift
//  UIComponents
//
//  Created by Hugh Bellamy on 14/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//

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
    }
}
