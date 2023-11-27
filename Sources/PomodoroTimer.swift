//
//  PomodoroTimer.swift
//
//
//  Created by Jonson Allen on 2023-11-22.
//

import Foundation
import Combine

@main

struct TimerApp {
    
    static func main() {
        print("Please desired Timer:")
        var countdown = 1
        
        if let timer = readLine() {
            print("\(timer) Timer will start in...")
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                print("\(countdown)...")
                
                countdown += 1
                if countdown >= 4 {
                    print("Start!")
                    timer.invalidate()
                    CFRunLoopStop(CFRunLoopGetCurrent())
                }
            }
        } else {
            print("Why are you being so coy?")
        }
        CFRunLoopRun()
    }

}
