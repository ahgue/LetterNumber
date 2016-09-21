//
//  ViewController.swift
//  LetterNumber
//
//  Created by Edgar Figueroa on 9/20/16.
//  Copyright © 2016 Edgar Figueroa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextView!
    @IBAction func countLetters(_ sender: UIButton) {
        
        func wordCount (s:String)-> Dictionary<Character, Int> {
            let myArray : String = textBox.text
            let myChar = [Character](myArray.characters)
            //print("my char is \(myChar)")
            //let words = s.components(separatedBy: " ")
            var wordDictionary = Dictionary<Character, Int>()
            for word in myChar {
                if wordDictionary[word] == nil {
                    wordDictionary[word] = 1
                }
                else {
                    wordDictionary.updateValue(wordDictionary[word]!+1, forKey: word)
                }
            }
            print(wordDictionary)
            return wordDictionary
        }
        
        wordCount(s: textBox.text)
        
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

