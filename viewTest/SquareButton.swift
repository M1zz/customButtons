//
//  squareButton.swift
//  viewTest
//
//  Created by 이현호 on 2020/07/20.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit

@IBDesignable class SquareButton: UIButton, ButtonProtocol {
    var shape:Shape = .square
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: self.frame.width, y: 0))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        path.addLine(to: CGPoint(x: 0, y: self.frame.height))
        UIColor.yellow.setFill()
        path.fill()
    }
    
}
