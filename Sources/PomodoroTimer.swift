//
//  PomodoroTimer.swift
//
//
//  Created by Jonson Allen on 2023-11-22.
//

import Foundation

@main

struct TimerApp {
    
    static func main() {
        print("Please desired Timer:")
        var countdown = 0
        
        if let timer = readLine() {
            print("\(timer) Timer will start in...")
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                print("\(countdown)...")
                countdown += 1
                 
                if countdown == 3 {
                    print("Start!")
                    timer.invalidate()
                }
            }
        } else {
            print("Why are you being so coy?")
        }
    }

}
