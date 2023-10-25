//
//  SpinnerView.swift
//  PokedexApp
//
//  Created by Axl Estevez on 18/10/23.
//

import UIKit
import Lottie

class SpinnerView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var spinnerView: UIView!
    
    private var animationView: LottieAnimationView?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        setupAnimation()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupAnimation() {
        animationView = .init(name: "pokeball")
        animationView!.frame = spinnerView.bounds
        animationView!.contentMode = .scaleAspectFit
        animationView!.loopMode = .loop
        animationView!.animationSpeed = 0.5
        spinnerView.addSubview(animationView!)
        animationView!.play()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SpinnerView", owner: self)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
}
