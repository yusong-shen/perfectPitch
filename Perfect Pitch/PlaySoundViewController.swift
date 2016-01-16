//
//  PlaySoundViewController.swift
//  Perfect Pitch
//
//  Created by 沈煜松 on 1/15/16.
//  Copyright (c) 2016 Yusong Shen. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {
   
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // file is empty ??
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error:nil)
            
        }else{
            println("filepath is empty")
        }

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playLowPitch(sender: UIButton) {
        
    }
    @IBAction func slowPlay(sender: UIButton) {
        audioPlayer.play()
    }
}
