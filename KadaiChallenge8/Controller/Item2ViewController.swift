//
//  Item2ViewController.swift
//  KadaiChallenge8
//
//  Created by 澤田世那 on 2022/04/24.
//

import UIKit

class Item2ViewController: UIViewController {
    private let valueModel = ValueModel()
    private let delegate = UIApplication.shared.delegate as? AppDelegate

    @IBOutlet private weak var sliderValueLabel: UILabel!
    @IBOutlet private weak var changingSlider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        changingSlider.value = delegate?.count ?? 0
        sliderValueLabel.text = valueModel.floatToString(value: changingSlider.value)
    }

    @IBAction private func sliderAction(_ sender: Any) {
        sliderValueLabel.text = valueModel.floatToString(value: changingSlider.value)
        delegate?.count = changingSlider.value
    }
}
