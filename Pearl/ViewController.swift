//
//  ViewController.swift
//  Pearl
//
//  Created by Vikram Mahendru on 6/8/16.
//  Copyright © 2016 Vikram Mahendru. All rights reserved.
//

import UIKit
var pageWidth = CGFloat()


class ViewController: UIViewController, LTMorphingLabelDelegate {
   
    @IBOutlet weak var scrollView: UIScrollView!
  
    @IBOutlet weak var Label: LTMorphingLabel!
    private var i = -1

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
     

        var V1 : ViewController1 = ViewController1 (nibName: "ViewController1", bundle: nil)
        self.addChildViewController(V1)
        self.scrollView.addSubview(V1.view)
        V1.didMoveToParentViewController(self)
        
        var V2 : ViewController2 = ViewController2 (nibName: "ViewController2", bundle: nil)
        self.addChildViewController(V2)
        self.scrollView.addSubview(V2.view)
        V2.didMoveToParentViewController(self)
        
        var V2Frame : CGRect = V2.view.frame
        V2Frame.origin.x = self.view.frame.width
        V2.view.frame = V2Frame
        
        
        var V3 : ViewController3 = ViewController3 (nibName: "ViewController3", bundle: nil)
        self.addChildViewController(V3)
        self.scrollView.addSubview(V3.view)
        V3.didMoveToParentViewController(self)
        
        var V3Frame : CGRect = V3.view.frame
        V3Frame.origin.x = self.view.frame.width * 2
        V3.view.frame = V3Frame
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.view.frame.height )
        pageWidth = CGRectGetWidth(scrollView.frame)
   
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
