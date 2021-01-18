//
//  ViewController.swift
//  iossandbox
//
//  Created by takahiro ogiwara on 2021/01/19.
//

import UIKit
import EasyTipView

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    private var tipView: EasyTipView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var preferences = EasyTipView.Preferences()
        preferences.drawing.font = UIFont(name: "Futura-Medium", size: 13)!
        preferences.drawing.foregroundColor = UIColor.white
        preferences.drawing.backgroundColor = UIColor.green
        preferences.drawing.arrowPosition = .top
        
        EasyTipView.globalPreferences = preferences
        
    }
    
    @IBAction func didTapButton() {
        if let tipView = tipView {
            tipView.dismiss()
            self.tipView = nil
            return
        }

        tipView = EasyTipView(text: "tooltip", preferences: EasyTipView.globalPreferences, delegate: self)
        tipView?.show(forView: label)
    }
}

extension ViewController: EasyTipViewDelegate {
    func easyTipViewDidTap(_ tipView: EasyTipView) {

    }
    
    func easyTipViewDidDismiss(_ tipView: EasyTipView) {

    }
}

