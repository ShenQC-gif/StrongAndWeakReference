//
//  ViewController.swift
//  StrongAndWeakReference
//
//  Created by ちいつんしん on 2021/03/13.
//

import UIKit

class MainViewController: UIViewController, ButtonActionDelegate {

    @IBOutlet weak var viewForCustomView: CustomView!
    @IBOutlet weak var numberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("MainViewControllerを開きました")
        viewForCustomView.delegate = self
    }

    private var number = 0

    func plus() {
        number += 1
        numberLabel.text = "\(number)"
    }

    func minus() {
        number -= 1
        numberLabel.text = "\(number)"
    }
}

