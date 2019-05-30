//
//  FinglishTests.swift
//  FinglishTests
//
//  Created by Aryan Zaferani-Nobari on 4/26/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import XCTest
@testable import Finglish

class FinglishTests: XCTestCase
{
    var app = Translator.myTranslator
    var game = GameStats.myGame
    var masterGame = MasterGame()
    override func setUp()
    {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = Translator.myTranslator
    }

    override func tearDown()
    {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testturnWordsToArray()
    {
        let array = app.getArray(paragraph: "Hello How Are You Today")
        let actualArray = ["hello","how","are","you","today"]
        XCTAssertEqual(array, actualArray)
    }
    
    func testCleanUp()
    {
        let string = "Hello!!! How?? IS School,,, Today"
        let cleanString = app.cleanup(text: string)
        let actual = "hello how is school today"
        XCTAssertEqual(cleanString, actual)
    }
    
    func testMapping()
    {
        let actual = ["n": ["ن", "نـ", "ـنـ", "ـن"], "f": ["ف", "فـ", "ـفـ", "ـف"], "l": ["ل", "لـ", "ـلـ", "ـل"], "t": ["ت", "تـ", "ـتـ", "ـت", "ط", "طـ", "ـطـ", "ـط"], "r": ["ر", "ـر"], "s": ["ـس", "س", "سـ", "ـسـ", "ص", "صـ", "ـصـ", "ـص"], "ẕ": ["ذ", "ـذ", "ظ", "ظـ", "ـظـ", "ـظ"], "g": ["ق", "قـ", "ـق", "ـق", "گ", "گـ", "ـگـ", "ـگ"], "h": ["ه", "هـ", "ـهـ", "ـه", "ح", "حـ", "ـحـ", "ـح"], "aa": ["ع", "عـ", "ـعـ", "ـع"], "kh": ["خ", "خـ", "ـخـ", "ـخ"], "j": ["ج", "جـ", "ـجـ", "ـج"], "a": ["ا", "ـا", " آ"], "ye": ["ی", "ي", "یـ", "ـیـ", "ـی", " ى"], "d": ["د", "ـد"], "je": ["ژ", "ـژ"], "che": ["چ", "چـ", "ـچـ", "ـچ"], "b": ["ب", "بـ", "ـبـ", "ـب"], "gh": ["غ", "غـ", "ـغـ", "ـغ"], "p": ["پ", "پـ", "ـپـ", "ـپ"], "z": ["ز", "ـز", "ض", "ضـ", "ـض", "ـض"], "m": ["م", "مـ", "ـمـ", "ـم"], "k": ["ک", "ـ‍ك", "ك", "کـ", "ـکـ", "ـک"], "oo": ["و", "ـو"], "sh": ["ث", "ثـ", "ـثـ", "ـث", "ش", "شـ", "ـشـ", "ـش"]]
        app.getData()
        XCTAssertEqual(actual, app.mapping)
        
    }

    func  testFarsiToFinglish()
    {
        let finglish = app.farsiToFinglish(text: "خوب")
        let actual = "khoob"
        XCTAssertEqual(finglish, actual)
    }
    
    func testFinglishToFarsi()
    {
        let farsi = app.finglishToFarsi(text: "khoob")
        let actual = "خوب"
        XCTAssertEqual(farsi, actual)
    }
    
    func testTranslateToFinglish()
    {
        let farsi = app.translateToFinglish(text: "این پسره")
        XCTAssertNotNil(farsi)
    }
    
    func testTranslateToFarsi()
    {
        let farsi = app.translateToFarsi(text: "salam chetori khoob hastied")
        XCTAssertNotNil(farsi)
    }
    
    func testGame()
    {
        let array = masterGame.makeLevels(level: 3)
        XCTAssertNotNil(array)
    }
    
    func testGenerateGameWords1()
    {
        let word = masterGame.generateWord(level: 1)
        XCTAssertNotNil(word)
    }
    func testGenerateGameWords2()
    {
        let word = masterGame.generateWord(level: 2)
        XCTAssertNotNil(word)
    }
    
    func testGenerateGameWords3()
    {
        let word = masterGame.generateWord(level: 3)
        XCTAssertNotNil(word)
    }
    
    func testGenerateGameWords4()
    {
        let word = masterGame.generateWord(level: 4)
        XCTAssertNotNil(word)
    }
    func testGenerateGameWords5()
    {
        let word = masterGame.generateWord(level: 10)
        XCTAssertNotNil(word)
    }
    
    func testGameChecker()
    {
        let word = "here"
        let wrongactual = "wrong"
        let rightactual = "here"
        XCTAssertTrue(masterGame.checkValidity(user: word, actual: rightactual))
        XCTAssertFalse(masterGame.checkValidity(user: word, actual: wrongactual))
    }
    
    func testCheckValidity()
    {
        let level = masterGame.myGame.level
        masterGame.nextLevel()
        let nextLevel = masterGame.myGame.level
        XCTAssertEqual(level + 1, nextLevel + 1)
        
    }

}
