//
//  Item2ViewController.swift
//  KadaiChallenge8
//
//  Created by 澤田世那 on 2022/04/24.
//

import UIKit

class Item2ViewController: UIViewController {
    
    let valueModel = ValueModel()
    let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        valueModel.value = delegate.count
        changingSlider.value = delegate.count
        sliderValueLabel.text = String(valueModel.value ?? 0)
    }
    
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var changingSlider: UISlider!
    @IBAction func sliderAction(_ sender: Any) {
        valueModel.value = changingSlider.value
        sliderValueLabel.text = String(valueModel.value ?? 0)
        delegate.count = valueModel.value ?? 0
    }
}
