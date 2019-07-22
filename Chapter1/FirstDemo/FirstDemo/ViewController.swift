//
//  ViewController.swift
//  FirstDemo
//
//  Created by Larry Bulen on 7/21/19.
//  Copyright © 2019 Larry Bulen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func numberOfVowels(in string: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u",
                                   "A", "E", "I", "O", "U"]
        
        return string.reduce(0) {
            $0 + (vowels.contains($1) ? 1 : 0)
        }
    }
    
    func makeHeadline(from string: String) -> String {
        let words = string.components(separatedBy: " ")
        let headlineWords = words.map { (word) -> String in
            var mutableWord = word
            let first = mutableWord.remove(at: mutableWord.startIndex)
            return String(first).uppercased() + mutableWord
        }
        return headlineWords.joined(separator: " ")
    }

}

