//
//  ViewController.swift
//  timerTest
//
//  Created by student on 7/26/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit
import AVFoundation

class GuidedMeditationViewController: UIViewController
{
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func fifteenMinutesButton(_ sender: Any)
    {
        if running
        {
            endTimer()
        }
        totalTime = 920
        soundName = "15min"
        playSound()
        startTimer()
    }
    @IBAction func fiveMinutesButton(_ sender: Any)
    {
        if running
        {
            endTimer()
        }
        totalTime = 302
        soundName = "5min"
        playSound()
        startTimer()
    }
    @IBAction func tenMinutesButton(_ sender: Any)
    {
        if running
        {
            endTimer()
        }
        totalTime = 626
        soundName = "10min"
        playSound()
        startTimer()
    }
    @IBAction func pausePlay(_ sender: Any)
    {
        if running
        {
            pauseTimer()
        }
        else
        {
            resumeTimer()
        }
    }
    
    
    var countdownTimer: Timer!
    var totalTime = 0
    var running: Bool = false
    
    var player: AVAudioPlayer?
    var soundName: String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func startTimer()
    {
        running = true
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime()
    {
        timerLabel.text = "\(timeFormatted(totalTime))"
        
        if totalTime != 0
        {
            totalTime -= 1
        }
        else
        {
            endTimer()
        }
    }
    
    func timeFormatted(_ duration: Int) -> String
    {
        let seconds: Int = duration % 60
        let minutes: Int = (duration / 60) % 60
        
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    func pauseTimer()
    {
        if running
        {
            player?.pause()
            countdownTimer.invalidate()
            running = false
        }
    }
    
    func resumeTimer()
    {
        if !running
        {
            player?.play()
            startTimer()
            running = true
        }
    }
    
    func endTimer()
    {
        countdownTimer.invalidate()
        player?.stop()
        timerLabel.text = "00:00"
        running = false
    }
    
    func playSound()
    {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }

}

