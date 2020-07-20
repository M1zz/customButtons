//
//  ViewController.swift
//  viewTest
//
//  Created by 이현호 on 2020/07/17.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit


enum Shape :String{
    case triangle
    case square
    case circle
}

class ViewController: UIViewController {
    
    @IBOutlet var shapeLabel: UILabel!
    @IBOutlet weak var customView: CustomView!
    private var shapeState: String = "Triangle"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickTriangle(_ sender: Any) {
        print("clickTriangle")
        reDraw(for: Shape.triangle)
    }
    
    @IBAction func clickCircle(_ sender: Any) {
        print("clickCircle")
        reDraw(for: Shape.circle)
    }
    
    @IBAction func clickSquare(_ sender: Any) {
        print("clickSquare")
        reDraw(for: Shape.square)
    }
    
    private func reDraw(for shape: Shape) {
        customView.shape = shape
        shapeLabel.text = shape.rawValue
    }
    
}
