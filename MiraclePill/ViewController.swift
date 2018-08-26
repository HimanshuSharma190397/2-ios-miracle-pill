//
//  ViewController.swift
//  MiraclePill
//
//  Created by himanshu sharma on 01/08/18.
//  Copyright © 2018 himanshu sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var btnChooseState: UIButton!
    
    let states = ["Delhi", "Uttar Pradesh", "Kerala", "Punjab", "Bihar"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self;
        statePicker.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onChooseStateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false;
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        btnChooseState.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true;
    }
}

