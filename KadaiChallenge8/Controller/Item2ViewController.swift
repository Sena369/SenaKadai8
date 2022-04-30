//
//  Item2ViewController.swift
//  KadaiChallenge8
//
//  Created by 澤田世那 on 2022/04/24.
//

import UIKit

class Item2ViewController: UIViewController {
    private let valueModel = ModelLocator.shared.valueModel

    @IBOutlet private weak var sliderValueLabel: UILabel!
    @IBOutlet private weak var changingSlider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        changingSlider.value = valueModel.count
        sliderValueLabel.text = valueModel.countText
    }

    @IBAction private func sliderAction(_ sender: Any) {
        sliderValueLabel.text = valueModel.countText
        valueModel.count = changingSlider.value
    }
}
