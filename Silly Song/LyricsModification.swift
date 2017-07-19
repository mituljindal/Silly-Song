//
//  LyricsModification.swift
//  Silly Song
//
//  Created by mitul jindal on 13/07/17.
//  Copyright © 2017 mitul jindal. All rights reserved.
//

import Foundation

func shortNameForName(name: String) -> String {
    let lowercaseName = name.lowercased()
    //let vowelSet = CharacterSet(charactersIn: "aeiou")
    var finalName = lowercaseName
    while finalName[finalName.startIndex] != "a" && finalName[finalName.startIndex] != "e" && finalName[finalName.startIndex] != "i" && finalName[finalName.startIndex] != "o" && finalName[finalName.startIndex] != "u" {
        finalName.remove(at: finalName.startIndex)
    }
    return finalName
}

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    var lyrics = lyricsTemplate
    let shortName = shortNameForName(name: fullName)
    lyrics = lyrics
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
    
    return lyrics
}
