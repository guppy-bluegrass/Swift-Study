// 2021.01.20 extramilejin

import Foundation
func solution(_ n:Int64) -> Int64 {
    var intToStr = String(sqrt(Double(n))).map{$0}
    var afterDotCountStart = false
    var count = 0
    for (index, char) in intToStr.enumerated() {
        
        if afterDotCountStart == true {
            count += 1
            if count >= 2 {return -1}
        }
        
        if char == "." {afterDotCountStart = true}
        
    }
    
    return Int64(pow(sqrt(Double(n)) + 1,2)) 
}
