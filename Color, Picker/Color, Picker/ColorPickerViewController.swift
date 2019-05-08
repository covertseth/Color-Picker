//
//  ColorPickerViewController.swift
//  Color, Picker
//
//  Created by Seth Covert on 5/8/19.
//  Copyright © 2019 Seth Covert. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var colors = [(colorNames: "Red", backgColor: UIColor.red),
                  (colorNames: "Orange", backgColor: UIColor.orange),
                  (colorNames: "Yellow", backgColor: UIColor.yellow),
                  (colorNames: "Green", backgColor: UIColor.green),
                  (colorNames: "Blue", backgColor: UIColor.blue),
                  (colorNames: "Brown", backgColor: UIColor.brown),
                  (colorNames: "Purple", backgColor: UIColor.purple)]
    var colorIndex: Int = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].colorNames
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].colorNames
        self.view.backgroundColor = colors[row].backgColor
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text=colors[colorIndex].colorNames
        self.view.backgroundColor = colors[colorIndex].backgColor
        // Do any additional setup after loading the view, typically from a nib.
    }
}
