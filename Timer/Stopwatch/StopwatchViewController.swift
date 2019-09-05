//
//  StopwatchViewController.swift
//  Timer
//
//  Created by Dwayne Neckles on 8/26/19.
//  Copyright © 2019 Dwayne Neckles. All rights reserved.
//

import UIKit

class StopwatchViewController: UIViewController {
    
    var timerStarted:Bool = false
    var millisecondsPassed = 0.0
    var ms:String = ""
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var stopwatchDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBtn.isEnabled = false
        stopwatchDisplay.text = "00:00:00.00"

      Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (Timer) in
        
        self.stopwatchDisplay.text = "00:00:\( self.calcms()\( self.calcms())"
        })
    }
    func calcTime() -> String {
        self.millisecondsPassed += 0.1
      
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumIntegerDigits = 0
        numberFormatter.minimumFractionDigits = 1
        if let millisecondsPassed = numberFormatter.string(from:NSNumber(value: millisecondsPassed)) {
          self.ms = millisecondsPassed
        }
          return String(describing: ms )
    }
    
    @IBAction func tapStart(_ sender: UIButton, forEvent event: UIEvent) {
        resetBtn.isEnabled = true
        changeStartButtonLbl()
    }
    @IBAction func tapReset(_ sender: UIButton) {
        changeStartButtonLbl()
      }
    func changeStartButtonLbl() {
        timerStarted = !timerStarted
        startBtn.setTitle(timerStarted ? "Pause" :  "Start", for: UIControl.State.normal)
    }
}
