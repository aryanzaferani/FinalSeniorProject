//
//  Word.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/28/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import Foundation
import FirebaseDatabase

class Word
{
    var farsi: String
    var finglish: String
    let ref: DatabaseReference?
    
    init(finglish: String, farsi: String)
    {
        self.finglish = finglish
        self.farsi = farsi
        ref = nil
    }
    
    init(snapshot: DataSnapshot)
    {
        farsi = snapshot.key
        //finglish = snapshot.value as! String
        let snapvalues = snapshot.value as! [String : AnyObject]
        finglish = snapvalues["finglish"] as! String
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any
    {
        return ["farsi" : farsi, "finglish": finglish]
    }
}
