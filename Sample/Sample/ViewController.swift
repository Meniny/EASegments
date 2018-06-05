//
//  ViewController.swift
//  Sample
//
//  Created by 李二狗 on 2018/6/5.
//  Copyright © 2018年 Meniny Lab. All rights reserved.
//

import UIKit
import EASegments

class ViewController: UIViewController, EASegmentsDelegate {

    @IBOutlet weak var segmentsViaIB: EASegments!
    let flamingo = #colorLiteral(red: 0.92, green: 0.38, blue: 0.25, alpha: 1.00)
    let carmine = #colorLiteral(red: 0.70, green: 0.28, blue: 0.15, alpha: 1.00)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIApplication.shared.statusBarStyle = .lightContent
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = flamingo
        
        segmentsViaIB.titles = ["EASegments", "Yay!"]
        
        segmentsViaIB.backgroundColor = flamingo
        segmentsViaIB.selectedBackgroundColor = .white
        
        segmentsViaIB.titleColor = .white
        segmentsViaIB.selectedTitleColor = flamingo
        
        segmentsViaIB.titleFont = UIFont(name: "HelveticaNeue-Light", size: 17.0)
        
        self.setup()
    }
    
    func setup() {
        let segments = EASegments(titles: ["Tweets", "Likes"])
        // use frame, or AutoLayout
        segments.frame = CGRect(x: 0, y: 0, width: 200.0, height: 30.0)
        
        segments.backgroundColor = carmine
        segments.selectedBackgroundColor = .white
        
        segments.titleColor = .white
        segments.selectedTitleColor = flamingo
        
        segments.titleFont = UIFont(name: "HelveticaNeue-Medium", size: 13.0)
        
        // do this:
//        segments.addTarget(self, action: #selector(segmentsValueDidChange(_:)), for: .valueChanged)
        // or this:
        segments.delegate = self // EASegmentsDelegate?
        
        navigationItem.titleView = segments
    }
    
    // addTarget
    @objc
    @IBAction func segmentsValueDidChange(_ sender: EASegments) {
        print("valueChanged: \(sender.selectedIndex) [\(sender.selectedTitle ?? "nil")]")
    }
    
    // EASegmentsDelegate
    func segments(_ segments: EASegments, didSelectAt index: Int) {
        print("didSelectAt: \(segments.selectedIndex) [\(segments.selectedTitle ?? "nil")]")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

