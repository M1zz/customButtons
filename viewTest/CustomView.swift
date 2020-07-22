//
//  CustomView.swift
//  viewTest
//
//  Created by 이현호 on 2020/07/20.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit

@IBDesignable class CustomView: UIView {
    var shape: Shape = .triangle {
      didSet {
            setNeedsDisplay()
        }
    }

    override func draw(_ rect: CGRect) {
        if shape == .triangle {
            let path = UIBezierPath()
            path.move(to: CGPoint(x: self.frame.width/2, y: 0))
            path.addLine(to: CGPoint(x: 0, y: self.frame.height))
            path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
            UIColor.green.setFill()
            path.fill()
        }
        if shape == .circle {
            let path = UIBezierPath(ovalIn: rect)
            UIColor.blue.setFill()
            path.fill()
        }
        if shape == .square {
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: self.frame.width, y: 0))
            path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
            path.addLine(to: CGPoint(x: 0, y: self.frame.height))
            UIColor.yellow.setFill()
            path.fill()
        }
    }

}
