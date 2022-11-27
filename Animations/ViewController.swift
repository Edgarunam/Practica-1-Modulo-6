//
//  ViewController.swift
//  Animations
//
//  Created by DISMOV on 16/11/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    var animationView : LottieAnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fish = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "fish")
        fish.center = self.view.center
        animationView = fish.animationView
        view.backgroundColor = .green
        
        self.view.addSubview(animationView!)
        
        animationView?.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        animationView?.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

    @IBAction func indexChange(_ sender: Any) {
        animationView?.removeFromSuperview()
        switch segmentedControl.selectedSegmentIndex
            {
            case 0:
                let fish = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "fish")
                fish.center = self.view.center
                animationView = fish.animationView
                view.backgroundColor = .cyan
            case 1:
                let fish = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "music-man")
                fish.center = self.view.center
                animationView = fish.animationView
            view.backgroundColor = .white
            case 2:
                let fish = LoaderView(frame: CGRect(x:0, y:0, width: 400, height: 500), animationName: "karlito-spike")
                fish.center = self.view.center
                animationView = fish.animationView
            view.backgroundColor = .darkText
            default:
                break
            }
        
        self.view.addSubview(animationView!)
        
        animationView?.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        animationView?.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }
    
}

