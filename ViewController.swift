//
//  ViewController.swift
//  Success Builder
//
//  Created by Ben on 19.05.2020.
//  Copyright © 2020 Ben. All rights reserved.
//


import UIKit

extension UIViewController {

//    adds beutiful transition when navigating between view controllers (forwards, from top)
    func makeVerticalTransitionFromTop(){
        let transition:CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromTop
        self.navigationController!.view.layer.add(transition, forKey: kCATransition)
    }
    
    //    adds beutiful transition when navigating between view controllers (backwards, from top)
    func makeVerticalTransitionFromBottom(){
        let transition:CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromBottom
        self.navigationController!.view.layer.add(transition, forKey: kCATransition)
    }
}
