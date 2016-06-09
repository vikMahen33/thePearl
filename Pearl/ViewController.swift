//
//  ViewController.swift
//  Pearl
//
//  Created by Vikram Mahendru on 6/8/16.
//  Copyright © 2016 Vikram Mahendru. All rights reserved.
//

import UIKit
var hi = 0

class ViewController: UIViewController, LTMorphingLabelDelegate {
    private var i = -1
    var gameTimer: NSTimer!

     var textArray = [
        "What is the pearl?",
        "A pearl", "A pearl is not just", "A rockk like it looks like", "and feels like.",
        "A pearl", "is an enemy"    ]
    private var text: String {
        i = i >= textArray.count - 1 ? 0 : i + 1
        return textArray[i]
    }
    
    @IBOutlet weak var Label: LTMorphingLabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        gameTimer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: #selector(runTimedCode), userInfo: nil, repeats: true)

        Label.delegate = self

        Label.text = text

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func runTimedCode() {
        hi = hi + 1
        if hi > textArray.count + 1 {
    
            
        
        }else{
        Label.morphingEffect =  .Evaporate
        Label.text = textArray[hi]
        
        
        }
    }
    

    /*
    // MARK: - Navigation
=======
//hellooooo i feel dead
>>>>>>> 8654a25536c0b25827a1579f3b0b6110524aefcc

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
