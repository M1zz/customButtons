//
//  CircleButton.swift
//  viewTest
//
//  Created by 이현호 on 2020/07/20.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit

@IBDesignable class CircleButton: UIButton {
    var shape:Shape = .circle
    
    override func draw(_ rect: CGRect) {
      let path = UIBezierPath(ovalIn: rect)
      UIColor.blue.setFill()
      path.fill()
    }
}
