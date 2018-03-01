//
//  LoteriaHelper.swift
//  Loteria
//
//  Created by Luis Fernando Rodrigues  on 01/03/18.
//  Copyright © 2018 Luis Fernando Rodrigues . All rights reserved.
//

import UIKit

class LoteriaHelper: NSObject {
    
    var numbers : [Int] = []
    
    func  numbersGenerate(max: Int , min : Int)-> Int{
        return Int(arc4random_uniform(UInt32(max - min + 1)))
    }
    
    public func getNumbers(max: Int, type : Int) -> [Int]{
        var i = 0;
        while i <= type  {
            let value = numbersGenerate(max: max , min: 0);
            if !numbers.contains(value){
                numbers += [value]
                i = i + 1;
            }
        }
        return numbers;
    }

}
