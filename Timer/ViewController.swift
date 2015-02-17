//
//  ViewController.swift
//  Timer
//
//  Created by chantel Frizzell on 2/16/15.
//  Copyright (c) 2015 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var count = 0
    
    func updateTime() {
        count++
        elapsedTime.text = "\(count)"
    }
    

    @IBOutlet weak var elapsedTime: UILabel!
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        count = 0
        elapsedTime.text = "0"
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

