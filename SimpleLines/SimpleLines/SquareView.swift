//
//  SquareView.swift
//  SimpleLines
//
//  Created by Josue Quiñones on 10/13/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class SquareView: UIView {

    override func draw(_ rect: CGRect) {
        
        let aPath = UIBezierPath()
        aPath.lineWidth = 4
        
        aPath.move(to: CGPoint(x: 10, y: 0))
        
        aPath.addLine(to: CGPoint(x: frame.width - 10, y: 0))
        aPath.addQuadCurve(to: CGPoint(x: frame.width, y: 10), controlPoint: CGPoint(x: frame.width, y: 0))
        
        //derecha
        aPath.addLine(to: CGPoint(x: frame.width, y: frame.height - 10))
        aPath.addQuadCurve(to: CGPoint(x: frame.width - 10, y: frame.height), controlPoint: CGPoint(x: frame.width, y: frame.height))
        
        //abajo
        aPath.addLine(to: CGPoint(x: 10, y: frame.height))
        aPath.addQuadCurve(to: CGPoint(x: 0, y: frame.height - 10), controlPoint: CGPoint(x: 0, y: frame.height))
        
        //izquierda
        aPath.addLine(to: CGPoint(x: 0, y: 10))
        aPath.addQuadCurve(to: CGPoint(x: 10, y: 0), controlPoint: CGPoint(x: 0, y: 0))
        
        
        UIColor.black.set()
        aPath.stroke()
        
        /*
 
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(2)
        context?.setStrokeColor(UIColor.black.cgColor)
        
        //Cuadrado con bordes redondeados centrado en una view
        context?.move(to: CGPoint(x: 10, y: 0))
        
        //arriba
        context?.addLine(to: CGPoint(x: frame.width - 10, y: 0))
        context?.addQuadCurve(to: CGPoint(x: frame.width, y: 10), control: CGPoint(x: frame.width, y: 0))
        
        //derecha
        context?.addLine(to: CGPoint(x: frame.width, y: frame.height - 10))
        context?.addQuadCurve(to: CGPoint(x: frame.width - 10, y: frame.height), control: CGPoint(x: frame.width, y: frame.height))
        
        //abajo
        context?.addLine(to: CGPoint(x: 10, y: frame.height))
        context?.addQuadCurve(to: CGPoint(x: 0, y: frame.height - 10), control: CGPoint(x: 0, y: frame.height))
        
        //izquierda
        context?.addLine(to: CGPoint(x: 0, y: 10))
        context?.addQuadCurve(to: CGPoint(x: 10, y: 0), control: CGPoint(x: 0, y: 0))
        
        
        //  context?.addLine(to: CGPoint(x: 100, y: frame.height))
        
        
        context?.strokePath()
         */
    }

}
