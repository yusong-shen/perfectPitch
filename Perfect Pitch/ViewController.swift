//
//  ViewController.swift
//  Perfect Pitch
//
//  Created by 沈煜松 on 1/15/16.
//  Copyright (c) 2016 Yusong Shen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RecordingProcess: UILabel!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        RecordingProcess.hidden = true
        recordButton.enabled = true
        stopButton.hidden = true
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordButton.enabled = false
        RecordingProcess.hidden = false
        stopButton.hidden = false
        println("recording")
    }

    @IBAction func stop(sender: UIButton) {
        
        RecordingProcess.hidden = true
    }
}

