//
//  ActionButton.swift
//  WaterCounter
//
//  Created by Josue Quiñones on 10/13/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

//renderizar el pintado de draw
@IBDesignable
class ActionButton: UIButton {
    //para hacer distincion entre un boton y otro sin usar tags
    @IBInspectable var isAddButton: Bool = true
    @IBInspectable var fillColor: UIColor = UIColor.green
    
    private var halfWidth: CGFloat {
        return bounds.width / 2
    }
    private var halfHeight: CGFloat {
        return bounds.height / 2
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        let halfPlusWidth = plusWidth / 2
        
        let plusPath = UIBezierPath()
        plusPath.lineWidth = 5.0
        
        plusPath.move(to: CGPoint(x: halfWidth - halfPlusWidth, y: halfHeight))
        plusPath.addLine(to: CGPoint(x: halfWidth + halfPlusWidth, y: halfHeight))
        
        if isAddButton {
            plusPath.move(to: CGPoint(x: halfWidth, y: halfHeight - halfPlusWidth))
            plusPath.addLine(to: CGPoint(x: halfWidth, y: halfHeight + halfPlusWidth))
        }
        
        UIColor.white.setStroke()
        
        plusPath.stroke()
        
    }
    

}
