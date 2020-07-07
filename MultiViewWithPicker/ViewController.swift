//
//  ViewController.swift
//  MultiViewWithPicker
//
//  Created by Molly Anderson on 7/6/20.
//  Copyright © 2020 Molly Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    
    private let pickerOptions = [
        "Thing One", "Thing Two", "Thing Three"]
    
    @IBAction func onSelectButtonPressed(_ sender: UIButton) {
        let row = picker.selectedRow(inComponent: 0)
        let selected = pickerOptions[row]
        let title = "You selected \(selected)!"
        
        let alert = UIAlertController(
            title: title,
            message: "Thank you for choosing",
            preferredStyle: .alert
        )
        let action = UIAlertAction(
            title: "You're welcome",
            style: .default,
            handler: nil
        )
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerOptions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerOptions[row]
    }

}

