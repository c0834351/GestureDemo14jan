//
//  ViewController.swift
//  GestureDemo14jan
//
//  Created by Sai Snehitha Bhatta on 14/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeUp.direction = .up
        view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeDown.direction = .down
        view.addGestureRecognizer(swipeDown)
        
    }

    @objc func swiped(gesture: UISwipeGestureRecognizer){
        let swipeGesture = gesture as UISwipeGestureRecognizer
        switch swipeGesture.direction{
        case .left:
            print("left gesture recognised")
        case .right:
            print("right gesture recognised")
        case .down:
            print("down gesture recognised")
        case .up:
            print("up gesture recognised")
        
        default:
            break
        }
        
    }
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        print("Tap detected: \(sender.numberOfTouches) touches, \(sender.numberOfTapsRequired) taps")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == .motionShake{
            print("phone shake")
        }
    }
    
}

