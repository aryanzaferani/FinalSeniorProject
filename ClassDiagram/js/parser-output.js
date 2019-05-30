var entities = [{
  "id": 1,
  "typeString": "class",
  "methods": [
    {
  "name": "setUp()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tearDown()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testExample()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FinglishUITests",
  "superClass": 23
},{
  "id": 2,
  "typeString": "class",
  "properties": [
    {
  "name": "var myGame",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "var wrong",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var right",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var level",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var round",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "wrongAnswer()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "rightAnswer()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setLevel(level: Int)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "nextRound()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "newGame()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "GameStats"
},{
  "id": 3,
  "typeString": "class",
  "properties": [
    {
  "name": "var myTranslator",
  "type": "type",
  "accessLevel": "internal"
},
    {
  "name": "var databaseRef : DatabaseReference?",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var word_translations",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var pending",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var mapping",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var newWords",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "setupDB()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "getData()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setRetrieveCallback()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "cleanup(text : String) -> String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "addWord(newWord : Word)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "removeWord(word : Word)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "finalizeWord(word : Word)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "getArray(paragraph: String) -> [String]",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "translateToFinglish(text : String) -> NSMutableAttributedString",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "farsiToFinglish(text : String) -> String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "translateToFarsi(text : String) -> NSMutableAttributedString",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "finglishToFarsi(text : String) -> String",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Translator"
},{
  "id": 6,
  "typeString": "class",
  "properties": [
    {
  "name": "var farsi: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var finglish: String",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "let ref: DatabaseReference?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "toAnyObject() -> Any",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(finglish: String, farsi: String)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "init(snapshot: DataSnapshot)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "Word"
},{
  "id": 7,
  "typeString": "class",
  "properties": [
    {
  "name": "var window: UIWindow?",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationWillResignActive(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationDidEnterBackground(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationWillEnterForeground(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationDidBecomeActive(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "applicationWillTerminate(_ application: UIApplication)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "protocols": [
    25
  ],
  "name": "AppDelegate",
  "superClass": 24
},{
  "id": 8,
  "typeString": "class",
  "properties": [
    {
  "name": "var myGame",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var app",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "checkValidity(user : String, actual : String) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "nextLevel()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "makeLevels(level : Int) -> [Word]",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "generateWord(level : Int) -> Word",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MasterGame",
  "superClass": 26
},{
  "id": 9,
  "typeString": "class",
  "properties": [
    {
  "name": "var word: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "awakeFromNib()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setSelected(_ selected: Bool, animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "WordCell",
  "superClass": 27
},{
  "id": 10,
  "typeString": "class",
  "properties": [
    {
  "name": "var myGame",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var app",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var level1: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var level2: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var level3: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var level4: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var level5: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "buttonSetup()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "level1(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "level2(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "level3(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "level4(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "level5(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "unwindFromGame(sender: UIStoryboardSegue)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "GameMenuViewController",
  "superClass": 26
},{
  "id": 11,
  "typeString": "class",
  "properties": [
    {
  "name": "var app",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var wordLabel: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var submit: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var enterWord: UITextField!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var word",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var index",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textFieldShouldReturn(_ textField: UITextField) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "submit(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ConfirmWordViewController",
  "superClass": 26
},{
  "id": 12,
  "typeString": "class",
  "properties": [
    {
  "name": "var inputField: UITextView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var outputField: UITextView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var submit: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var app",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var final",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textViewDidBeginEditing(_ textView: UITextView)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setUp()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "submit(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FinglishToFarsiViewController",
  "superClass": 26
},{
  "id": 13,
  "typeString": "class",
  "properties": [
    {
  "name": "var app",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var myTable: UITableView!",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "prepare(for segue: UIStoryboardSegue, sender: Any?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "unwindFromSubmitController(sender: UIStoryboardSegue)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "WordAdderViewController",
  "superClass": 26
},{
  "id": 14,
  "typeString": "class",
  "properties": [
    {
  "name": "var myGame",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var score: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ScoreViewController",
  "superClass": 26
},{
  "id": 15,
  "typeString": "class",
  "properties": [
    {
  "name": "var myTable: UITableView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var app",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "prepare(for segue: UIStoryboardSegue, sender: Any?)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "unwindFromWordConfirmation(sender: UIStoryboardSegue)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "ConfirmationTableViewController",
  "superClass": 26
},{
  "id": 16,
  "typeString": "class",
  "properties": [
    {
  "name": "var option1: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var option2: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var option3: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var option4: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var word: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var status: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var options",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var correctWord",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "generateOptions()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "resetColors()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "option1(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "option2(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "option3(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "option4(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "EasyGameViewController",
  "superClass": 8
},{
  "id": 17,
  "typeString": "class",
  "properties": [
    {
  "name": "var submit: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var password: UITextField!",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "submit(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textFieldShouldReturn(_ textField: UITextField) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "AdminLoginViewController",
  "superClass": 26
},{
  "id": 18,
  "typeString": "class",
  "properties": [
    {
  "name": "var inputField: UITextView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var outputField: UITextView!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var addWords: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var submit: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var app",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var final",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textViewDidBeginEditing(_ textView: UITextView)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setUp()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "submit(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "unwindFromNavigationController(sender: UIStoryboardSegue)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FarsiToFinglishViewController",
  "superClass": 26
},{
  "id": 19,
  "typeString": "class",
  "properties": [
    {
  "name": "var app",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var wordLabel: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var submit: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var enterWord: UITextField!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var suggestion: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var word",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var index",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textFieldShouldReturn(_ textField: UITextField) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "submit(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "SubmitWordViewController",
  "superClass": 26
},{
  "id": 20,
  "typeString": "class",
  "properties": [
    {
  "name": "var word: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var submit: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var enterWord: UITextField!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var status: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var myWord",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewDidLoad()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "setWord()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "submit(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "textFieldShouldReturn(_ textField: UITextField) -> Bool",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "HardGameViewController",
  "superClass": 8
},{
  "id": 21,
  "typeString": "class",
  "properties": [
    {
  "name": "var option1: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var option2: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var option3: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var option4: UIButton!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var word: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var status: UILabel!",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var options",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var correctWord",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var index",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var array",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "viewWillAppear(_ animated: Bool)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "generateOptions()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "resetColors()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "option1(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "option2(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "option3(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "option4(_ sender: Any)",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "MediumGameViewController",
  "superClass": 8
},{
  "id": 22,
  "typeString": "class",
  "properties": [
    {
  "name": "var app",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var game",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "var masterGame",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "methods": [
    {
  "name": "setUp()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "tearDown()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testturnWordsToArray()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testCleanUp()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testMapping()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testFarsiToFinglish()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testFinglishToFarsi()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testTranslateToFinglish()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testTranslateToFarsi()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testGame()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testGenerateGameWords1()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testGenerateGameWords2()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testGenerateGameWords3()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testGenerateGameWords4()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testGenerateGameWords5()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testGameChecker()",
  "type": "instance",
  "accessLevel": "internal"
},
    {
  "name": "testCheckValidity()",
  "type": "instance",
  "accessLevel": "internal"
}
  ],
  "name": "FinglishTests",
  "superClass": 23
},{
  "id": 23,
  "typeString": "class",
  "name": "XCTestCase"
},{
  "id": 24,
  "typeString": "class",
  "name": "UIResponder"
},{
  "id": 25,
  "typeString": "protocol",
  "name": "UIApplicationDelegate"
},{
  "id": 26,
  "typeString": "class",
  "name": "UIViewController"
},{
  "id": 27,
  "typeString": "class",
  "name": "UITableViewCell"
},{
  "id": 28,
  "typeString": "class",
  "name": "String",
  "extensions": [
    4
  ]
},{
  "id": 29,
  "typeString": "class",
  "name": "Character",
  "extensions": [
    5
  ]
},{
  "id": 4,
  "typeString": "extension",
  "methods": [
    {
  "name": "stringByRemovingEmoji() -> String",
  "type": "instance",
  "accessLevel": "internal"
}
  ]
},{
  "id": 5,
  "typeString": "extension",
  "methods": [
    {
  "name": "isEmoji() -> Bool",
  "type": "instance",
  "accessLevel": "fileprivate"
}
  ]
}] 