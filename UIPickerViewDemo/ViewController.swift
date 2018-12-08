//
//  ViewController.swift
//  UIPickerViewDemo
//
//  Created by Chhaileng Peng on 12/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let date = [["Monday", "Tuesday", "Wednesday", "Thuesday", "Friday", "Saturday", "Sunday"], ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]]
    
    var day = "", month = ""
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return date.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return date[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("============")
        return date[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            day = date[0][row]
        } else if component == 1 {
            month = date[1][row]
        }
        label.text = "\(day), \(month)"
    }
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
    }


}

