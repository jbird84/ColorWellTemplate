//
//  ViewController.swift
//  ColorWellTemplate
//
//  Created by Kinney Kare on 12/13/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewToChangeColor: UIView!
    @IBOutlet weak var colorWell: UIColorWell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewToChangeColor.layer.cornerRadius = viewToChangeColor.frame.size.height / 2
        setupColorWell()
    }
    
    private func setupColorWell() {
        colorWell.title = "Pick Your Color"
        colorWell.addTarget(self, action: #selector(colorChanged), for: .valueChanged)
    }

    @objc private func colorChanged() {
        viewToChangeColor.backgroundColor = colorWell.selectedColor
        
        //if you want to get hex value grab it like this
        guard let hexvalue = colorWell.selectedColor?.toHex else { return }
        print(hexvalue)
    }

}

