//
//  ViewController1.swift
//  Pearl
//
//  Created by Vikram Mahendru on 6/9/16.
//  Copyright © 2016 Vikram Mahendru. All rights reserved.
//

import UIKit
var hi = 0
class ViewController1: UIViewController, LTMorphingLabelDelegate {
  
    @IBOutlet weak var Segment: UISegmentedControl!
    private var i = -1
    var gameTimer: NSTimer!
    
    @IBOutlet weak var Label: LTMorphingLabel!
    

    var textArray = [
    "The Pearl",
    "The Pearl : By John Steinback", " An App by Vikram "," An App by Mahendru", "An App by Laura", "An App by Liu", "Oppel Period 6", "Swipe left to continue"
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
     Segment.selected = false
        
        gameTimer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: #selector(runTimedCode), userInfo: nil, repeats: true)
        
        Label.delegate = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func runTimedCode() {
        hi = hi + 1
        print(textArray.count)
        print(hi)
        if hi == textArray.count ||  hi > textArray.count   {
            hi = -1
            
            
        }else{
            Label.morphingEffect =  .Evaporate
            Label.text = textArray[hi]
            
            
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
