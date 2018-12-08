//
//  RegisterViewController.swift
//  UIPickerViewDemo
//
//  Created by Chhaileng Peng on 12/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var genderTextField: UITextField!
    
    let genders = ["Male", "Female"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let genderPickerView = UIPickerView(frame: CGRect.zero)
        genderPickerView.dataSource = self
        genderPickerView.delegate = self

        genderTextField.inputView = genderPickerView
        
    }

}

extension RegisterViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genders.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genders[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderTextField.text = genders[row]
    }
    
}

