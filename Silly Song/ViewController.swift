//
//  ViewController.swift
//  Silly Song
//
//  Created by mitul jindal on 12/07/17.
//  Copyright © 2017 mitul jindal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var lyricsView: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: Any) {
        nameField.text = ""
        lyricsView.text = ""
    }

    @IBAction func displayLyrics(_ sender: Any) {
        let longName = nameField.text
        
        let template = [
            "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
            "Banana Fana Fo F<SHORT_NAME>",
            "Me My Mo M<SHORT_NAME>",
            "<FULL_NAME>"].joined(separator: "\n")
        var lyrics :String?
        
        if let l = longName {
           lyrics = lyricsForName(lyricsTemplate: template, fullName: l)
        }
        
        lyricsView.text = lyrics
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
