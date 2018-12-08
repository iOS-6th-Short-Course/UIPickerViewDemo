//
//  CustomClass.swift
//  UIPickerViewDemo
//
//  Created by Chhaileng Peng on 12/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class CustomUITextField: UITextField {
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }
    
    override func caretRect(for position: UITextPosition) -> CGRect {
        return CGRect.zero
    }
    
}
