//
//  Translator.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/27/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import Foundation
import Firebase

extension String {
    func stringByRemovingEmoji() -> String {
        return String(self.filter { !$0.isEmoji() })
    }
}

extension Character {
    fileprivate func isEmoji() -> Bool {
        return Character(UnicodeScalar(UInt32(0x1d000))!) <= self && self <= Character(UnicodeScalar(UInt32(0x1f77f))!)
            || Character(UnicodeScalar(UInt32(0x2100))!) <= self && self <= Character(UnicodeScalar(UInt32(0x26ff))!)
    }
}


final class Translator
{
    static var myTranslator = Translator()
    var databaseRef : DatabaseReference?
    var word_translations = [Word]()
    var pending = [Word]()
    var mapping = [String: [String]]()
    var newWords = [String]()
    
    func setupDB()
    {
        Database.database().isPersistenceEnabled = true
        databaseRef = Database.database().reference()
        databaseRef?.keepSynced(true)
    }
    
    func getData()
    {
        if let url = Bundle.main.url(forResource:"Mappings", withExtension: "plist")
        {
            do
            {
                let data = try Data(contentsOf:url)
                mapping = try PropertyListSerialization.propertyList(from: data, options: [], format: nil) as! [String : [String]]
            }
            catch
            {
                print(error)
            }
        }
        
    }
    
    func setRetrieveCallback()
    {
        databaseRef?.child("Words").queryOrdered(byChild: "Words").observe(.value, with:
            { snapshot in
                
                var newWords = [Word]()
                for item in snapshot.children
                {
                    newWords.append(Word(snapshot: item as! DataSnapshot))
                }
                self.word_translations = newWords
        })
        databaseRef?.child("Pending").queryOrdered(byChild: "Pending").observe(.value, with:
            { snapshot in
                
                var pendingWords = [Word]()
                for item in snapshot.children
                {
                    pendingWords.append(Word(snapshot: item as! DataSnapshot))
                }
                self.pending = pendingWords
        })
    }
    
    func cleanup(text : String) -> String
    {
        var final_string = ""
        for char in text
        {
            if(char != Character("?") && char !=  Character("!") && char !=  Character("#") && char !=  Character("$") && char !=  Character("%") && char !=  Character(","))
            {
                final_string += String(char)
            }
            else if (char == "\n")
            {
                final_string += " "
            }
        }
        final_string = final_string.stringByRemovingEmoji()
        return final_string.lowercased()
    }
    
   
    
    
    
    func addWord(newWord : Word)
    {
        let newWordRef = databaseRef?.child("Pending").child(newWord.farsi)
        newWordRef?.setValue(newWord.toAnyObject())
    }
    
    func removeWord(word : Word)
    {
        let newWordRef = databaseRef?.child("Pending").child(word.farsi)
        newWordRef?.removeValue()
    }
    
    func finalizeWord(word : Word)
    {
        let newWordRef = databaseRef?.child("Words").child(word.farsi)
        newWordRef?.setValue(word.toAnyObject())
    }
    
    func getArray(paragraph: String) -> [String]
    {
        let cleanParagraph = cleanup(text: paragraph)
        let arrayOfWords = cleanParagraph.components(separatedBy: " ")
        return arrayOfWords
    
    }
    
    func translateToFinglish(text : String) -> NSMutableAttributedString
    {
        var found = false
        let final_word = NSMutableAttributedString(string: "")
        let wordArray = getArray(paragraph: text)
        for word in wordArray
        {
            found = false
            var attributedString : NSMutableAttributedString
            inWordList: for item in word_translations
            {
                if item.farsi == word
                {
                    attributedString = NSMutableAttributedString(string: item.finglish)
                    let range = (item.finglish as NSString).range(of: item.finglish)
                    attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: range)
                    final_word.append(attributedString)
                    final_word.append(NSMutableAttributedString(string: " "))
                    found = true
                    break inWordList
                }
            }
            if found == false
            {
                inPendingList: for item in pending
                {
                    if item.farsi == word
                    {
                        attributedString = NSMutableAttributedString(string: item.finglish)
                        let range = (item.finglish as NSString).range(of: item.finglish)
                        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white, range: range)
                        final_word.append(attributedString)
                        final_word.append(NSMutableAttributedString(string: " "))
                        found = true
                        break inPendingList
                    }
                }
            }
            if found == false
            {
                if(!newWords.contains(word))
                {
                    newWords.append(word)
                }
                let finglish = farsiToFinglish(text: word)
                attributedString = NSMutableAttributedString(string: finglish)
                let range = (finglish as NSString).range(of: finglish)
                attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: range)
                final_word.append(attributedString)
                final_word.append(NSMutableAttributedString(string: " "))
                found = true
            }
        }
        return final_word
    }
    
    func farsiToFinglish(text : String) -> String
    {
        var final_string = ""
        let cleanedUp = self.cleanup(text: text)
        for char in cleanedUp
        {
            if(Int(String(char)) != nil)
            {
                final_string += String(char)
            }
            else  if(char == " ")
            {
                final_string += " "
            }
            else
            {
                myCondition: for (english, farsi) in mapping
                {
                    for item in farsi
                    {
                        for version in item
                        {
                            if(version == char)
                            {
                                final_string += english
                                break myCondition
                            }
                        }
                    }
                    
                }
            }
        }
        return final_string
    }

    func translateToFarsi(text : String) -> NSMutableAttributedString
    {
        var found = false
        let final_word = NSMutableAttributedString(string: "")
        let wordArray = getArray(paragraph: text)
        print(wordArray)
        for word in wordArray
        {
            found = false
            var attributedString : NSMutableAttributedString
            inWordList: for item in word_translations
            {
                print(item.finglish)
                if item.finglish == word
                {
                    print("Here")
                    attributedString = NSMutableAttributedString(string: item.farsi)
                    let range = (item.farsi as NSString).range(of: item.farsi)
                    attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: range)
                    final_word.append(attributedString)
                    final_word.append(NSMutableAttributedString(string: " "))
                    found = true
                    break inWordList
                }
            }
            if found == false
            {
                inPendingList: for item in pending
                {
                    if item.finglish == word
                    {
                        attributedString = NSMutableAttributedString(string: item.farsi)
                        let range = (item.farsi as NSString).range(of: item.farsi)
                        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white, range: range)
                        final_word.append(attributedString)
                        final_word.append(NSMutableAttributedString(string: " "))
                        found = true
                        break inPendingList
                    }
                }
            }
            if found == false
            {
                let farsi = finglishToFarsi(text: word)
                attributedString = NSMutableAttributedString(string: farsi)
                let range = (farsi as NSString).range(of: farsi)
                attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: range)
                final_word.append(attributedString)
                final_word.append(NSMutableAttributedString(string: " "))
                found = true
            }
        }
        return final_word
    }

    func finglishToFarsi(text : String) -> String
    {
        var final_string = ""
        let cleanedUp = self.cleanup(text: text)
        var array = Array(cleanedUp)
        var i = 0
        while i < array.count
        {
            done: if(Int(String(array[i])) != nil)
            {
                final_string += String(array[i])
            }
            else  if(array[i] == " ")
            {
                final_string += " "
            }
            else
            {
                if(i + 2 < array.count)
                {
                    let string = String(array[i]) + String(array[i+1]) + String(array[i+2])
                    for (english, farsi) in mapping
                    {
                        if(english == string)
                        {
                            final_string += farsi[0]
                            i = i + 2
                            break done
                        }
                    }
                }
                if (i + 1 < array.count)
                {
                    let string = String(array[i]) + String(array[i+1])
                    for (english, farsi) in mapping
                    {
                        if(english == string)
                        {
                            final_string += farsi[0]
                            i = i + 1
                            break done
                        }
                    }
                }
                myCondition: for (english, farsi) in mapping
                {
                    for item in english
                    {
                        if(item == array[i])
                        {
                            final_string += farsi[0]
                            break myCondition
                        }
                    }
                }
            }
            i = i + 1
        }
        return final_string
    }
    
}
