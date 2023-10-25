//
//  HomeViewController.swift
//  PokedexApp
//
//  Created by Axl Estevez on 18/10/23.
//

import UIKit
import Lottie

class HomeViewController: UIViewController {
    
    private var spinnerView: SpinnerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showSppiner()
    }
    
    private func showSppiner() {
        spinnerView = SpinnerView(frame: CGRect(
            x: 0,
            y: 0,
            width: self.view.bounds.width,
            height: self.view.bounds.height
        ))
        self.view.addSubview(spinnerView)
    }
}
