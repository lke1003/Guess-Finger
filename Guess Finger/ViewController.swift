//
//  ViewController.swift
//  Guess Finger
//
//  Created by LAOFILIPE JOSE on 23/11/2016.
//  Copyright © 2016 LAOFILIPE JOSE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingerlabel: UILabel!
    @IBOutlet weak var fingertext: UITextField!
    
    @IBAction func guessbtn(_ sender: Any) {
        let finger: Int = Int(fingertext.text!)!
        let number = Int(arc4random_uniform(6))
        
        if finger == number
        {
            fingerlabel.text="Good"
        }else
        {
            fingerlabel.text="Sorry, Please try again!"
        }
        
        
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

