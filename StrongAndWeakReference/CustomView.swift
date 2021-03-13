//
//  CustomView.swift
//  StrongAndWeakReference
//  Created by ちいつんしん on 2021/03/13.
//

import UIKit

@objc protocol ButtonActionDelegate: NSObjectProtocol {
    func plus()
    func minus()
}

class CustomView: UIView{

    weak var delegate: ButtonActionDelegate?
    @IBOutlet weak var upButton: UIButton!

    override init(frame: CGRect) {
            super.init(frame: frame)
            loadNib()
        }

        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            loadNib()
        }

        func loadNib() {
            //CustomViewの部分は各自作成したXibの名前に書き換えてください
            let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! UIView
            view.frame = self.bounds
            self.addSubview(view)
        }

    @IBAction func didTapUp(_ sender: Any) {
        delegate?.plus()
    }

    @IBAction func didTapDown(_ sender: Any) {
        delegate?.minus()
    }
}
