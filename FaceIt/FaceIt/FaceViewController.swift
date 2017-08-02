//
//  ViewController.swift
//  FaceIt
//
//  Created by liuyubao on 2017/7/28.
//  Copyright © 2017年 liuyubao. All rights reserved.
//

import UIKit

class FaceViewController: UIViewController {

    @IBOutlet weak var faceView: FaceView!{
        didSet{
            let handler = #selector(faceView.changeScale(byReactingTO:))
            let pinchRecognizer = UIPinchGestureRecognizer(target: faceView,action: handler)
            faceView.addGestureRecognizer(pinchRecognizer)
            let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.toggleEyes(byReactingTo: )))
            tapRecognizer.numberOfTapsRequired = 1
            faceView.addGestureRecognizer(tapRecognizer)
            let swipeUpRecognizer = UISwipeGestureRecognizer(target:self, action:#selector(increaseHappiness))
            swipeUpRecognizer.direction = .up
            faceView.addGestureRecognizer(swipeUpRecognizer)
            let swipeDownRecognizer = UISwipeGestureRecognizer(target:self, action:#selector(decreaseHappiness))
            swipeDownRecognizer.direction = .down
            faceView.addGestureRecognizer(swipeDownRecognizer)
            
            updateUI()
                        
            
        }
    }
    
    func increaseHappiness(){
        expression = expression.happier
    }
    func decreaseHappiness(){
        expression = expression.sadder
    }
    
    func toggleEyes(byReactingTo tapRecognizer: UITapGestureRecognizer){
        if tapRecognizer.state == .ended{
            let eyes: FacialExpression.Eyes = (expression.eyes == .closed) ? .open : .closed
            expression = FacialExpression(eyes: eyes, mouth:expression.mouth)
        }
    }
    
    var expression = FacialExpression(eyes: .closed, mouth: .frown){
        didSet{
            updateUI()
            
        }
    }
    
    
    private func updateUI(){
        switch expression.eyes{
        case .open:
            faceView?.eyesOpen = true
        case .closed:
            faceView?.eyesOpen = false
        case .squinting:
            faceView?.eyesOpen = false
        }
        faceView?.mouthCurvature = mouthCurvatures[expression.mouth] ?? 0.0
    }
    
    private let mouthCurvatures = [FacialExpression.Mouth.grin: 0.5, .frown: -1.0, .smile:1.0, .neutral:0.0, .smirk: -0.5]
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
