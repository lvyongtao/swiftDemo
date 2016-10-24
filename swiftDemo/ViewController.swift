//
//  ViewController.swift
//  swiftDemo
//
//  Created by user on 16/2/23.
//  Copyright © 2016年 lvyongtao. All rights reserved.
//

import UIKit


typealias AudioSample = UITableView

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

    var tableView : UITableView?
    
    var swiftLable : UILabel?
    
    var surveyAnswer: String?
    
    var searchBar = UISearchBar()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        var nameStr:String = self .pritnLnName("FateLove",day:"2015")
        
        
        var dic : Dictionary<String,String> = ["name1":"kk1","name2":"kk2"]
        
        dic["name3"] = "kk3"
        print(dic)
        
        
        for index in 1...5{
            print("\(index) times 5 is \(index)*5")
        }
        
        
        initView()
        demoBool()
//
//        demo2()
//        
//        demo3()
    }

    func initView(){
        self.tableView = AudioSample(frame: self.view.frame, style: UITableViewStyle.grouped)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.register(UITableViewCell.self, forCellReuseIdentifier: "swiftCell")
        self.view .addSubview(self.tableView!)
    }
    
//    lazy var swiftLable:UILabel = {
//    
//        ret
//    }
//    func pritnLnName(name:String, day:String) ->String{
//        return "hello\(name), today is\(day)"
//    }
    
    func tableView(_ tableView: AudioSample, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCell(withIdentifier: "swiftCell",for: indexPath) as UITableViewCell
//        var row = indexPath.row as Int
        cell.textLabel!.text = String!("swiftDemo\(indexPath.row)")
        cell.textLabel!.textColor = UIColor.red
        cell.detailTextLabel?.text = String!("demo")
//        cell.detailTextLabel!.text = String!("detailTextLable")
        
        return cell
    }
    
    
    func tableView(_ tableView: AudioSample, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
//    func tableView(_ tableView: AudioSample, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let second = SecondViewController();
        self.present(second, animated:true) { () -> Void in
            print("present sucess")
        }
    }
    
    
    
    /**
     Bool 类型
     */
    
    func demoBool(){
        let a = 1;
        if a == 1{
            
        }
        let funaMiationfalse = false
        
        if funaMiationfalse {
            print("tureMM")
        }else{
            print("falseMM")
        }
        
        let funcMiationtrue = true
        
        if funcMiationtrue {
            print("tureMM")
        }else{
            
//            print("falseMM")
    
        }
        
 /// 元组
        
        
        let http404Error = (404,"Not Found")
        
        let (statusCode,statusMessage) = http404Error
        
        print("This is \(statusCode)");print("This is \(statusMessage)")
        
        let (statusEE, _) = http404Error
        print(statusEE)
        
        
        let possibleNum = "123"
        let covertedNum = Int(possibleNum)
        
        if covertedNum != nil {
            print("convertedNumber contains some integer value.")
        }
        
       
        
        /// 可选绑定类型
        surveyAnswer = "value"
        
        if let actualNumber = Int(possibleNum) {
            
            print("\'\(possibleNum)\' has an integer value of \(actualNumber)")
        }else{
            print("\'\(possibleNum)\' could not be converted to an integer")
        }
        
        /**
        隐式可选类型±对比
        */
        let possibleString : String? = "an optional string."
        let forcedString : String = possibleString!
        print(forcedString)
        
        let assumedString : String! = "an implicitly unwrapped optional string."
        
        let imlicitString : String = assumedString
        
        print(imlicitString)
        
        /**
         异常处理
         */
//        func canThrowError() throws{
//          print("可能抛出错误")
//        }
//        
//        do {
//            try canThrowError()
//            // 没有错误抛出
//        } catch {
//            // 有错误抛出
//        }
//        
//        /// 断言
//        let name = "nick"
//        
//        assert(name != "nick","名称匹配错误")
        
        /// 运算符
        let three : Int = 3
        
        let reduceThree = -three
        
        let addThree = -reduceThree
        
        print(addThree)
        
        /**
        三木运算 我最喜欢的
        */
        let cellheight = 40
        let hasheight = true
        let rowheight = cellheight + (hasheight ? 50 : 20)
        print("\(rowheight)")
        
        /**
        空合运算符 -- 便于判断是否用户自定义
        */
        let defaultsColorName = "red"
        
        var userColorName :String?
        var colorName = userColorName ?? defaultsColorName
        
        print("\(colorName)")
        
        
        userColorName = "green"
        
        
        colorName = userColorName ?? defaultsColorName
        
        /**
        字节和字符串 拼接通过 “＋”
        */
        let userCharacters:[Character] = ["a","b","🐱"]
        
        let userString = String(userCharacters)
        
        
        print(userString)
        
        /**
        前缀/后缀相等 (Prefix and Suffix Equality)
        */
        
        
        /**
        Array,Set,Dictionary  的使用和创建
        */
        
//        var someInts = [Int]()
//        print("someInts is of type [Int] with \(someInts.count) items。")
//        someInts.append(2)
//        someInts.insert(3, atIndex: 0)
        
        var doubleArr = [Double](repeating:0.0, count: 3)
        
        var anotherArr = Array(repeating:1.3, count: 2)
        
       
        doubleArr.insert(2.5, at: 0)
        
        anotherArr.insert(0.5, at: 0)
        
        var threeArr = doubleArr + anotherArr
        threeArr.removeLast()
        
        if threeArr.contains(1.3) {
            print("contains")
        }else{
            print("notContains")
        }
        print(threeArr)
        
        
        var faverSet:Set<String> = ["string1","string2"]
        
         faverSet.insert("sting3")
        //是否包含
//        faverSet.contains("string1")
//        faverSet.sort()
        
        /**
        使用intersect(_:)方法根据两个集合中都包含的值创建的一个新的集合。
        使用exclusiveOr(_:)方法根据值在一个集合中但不在两个集合中的值创建一个新的集合。
        使用union(_:)方法根据两个集合的值创建一个新的集合。
        使用subtract(_:)方法根据不在该集合中的值创建一个新的集合。
        */
        
        /**
        使用“是否等”运算符(==)来判断两个集合是否包含全部相同的值。
        使用isSubsetOf(_:)方法来判断一个集合中的值是否也被包含在另外一个集合中。
        使用isSupersetOf(_:)方法来判断一个集合中包含的值是另一个集合中所有的值。
        使用isStrictSubsetOf(_:)或者isStrictSupersetOf(_:)方法来判断一个集合是否是另外一个集合的子集合或者父集合并且和特定集合不相等。
        使用isDisjointWith(_:)方法来判断两个结合是否不含有相同的值。
        */
        
       // Dictionary
        var namesDic = [Int:String]()
        
        namesDic[1] = "one"
        
        var jsonDic = [String:String]()
        
        jsonDic = ["key1":"value1","key2":"value2"]
        
        jsonDic["key1"] = "value3"
        
        jsonDic["key3"] = "value5"
        
        
        /**
        switch  贯穿  使用  fallthrough
        */
        
        
        
        
        /**
        函数定义
        */
        
        func sayHello(personName: String) -> String {
            let greeting = "Hello, " + personName + "!"
            return greeting
        }
        
        
        func sayHelloWorld(personname:String ,userName:String) ->(person:String,user:String){
            return ("a","b")
        }
        sayHello(personName: "hello")
       let name =   sayHelloWorld(personname: "hello", userName: "name")
        print(name.person)
        print(name.user)

        /**
        类和结构体
        */
        
        struct Result{
            var width = 0
            var height = 0
        }
        class VideoMode{
            var resolution = Result()
            var interlaced = false
            var frameRate = 0.0
            var name : String?
        }
        
        let someResult = Result()
    
        
        print("someResult = ", someResult)
        
        var hd = Result(width: 1920, height: 1080)
        
        hd.width = 2048
        print(hd)
        
        /**
        枚举
        */
        enum compassPoint{
            case north,south,east,west
        }
        
        
        let someVideo = VideoMode()
        someVideo.resolution = hd
        someVideo.interlaced = false
        someVideo.name = "nickName"
        someVideo.frameRate = 30.0
       print(someVideo)
        /**
        属性  存储属性 1，常量结构体 2，延迟存储
        
        计算属性 (set 和 get方法)
        
        
        */
        
        struct Point {
            var x = 0.0 ,y = 0.0
        }
        struct Size {
            var width = 0.0 ,heigth = 0.0
        }
        
        struct Rect {
            var origin = Point()
            var size = Size()
            var center: Point {
                get {
                    let centerX = origin.x + (size.width/2)
                    let centerY = origin.y + (size.heigth/2)
                    return Point(x: centerX, y: centerY)
                }
                set {
                    origin.x = newValue.x - (size.width/2)
                    origin.y = newValue.y - (size.heigth/2)
                }
            }
        }
        
        /**
        属性观察器
        willSet在新的值被设置之前调用
        didSet在新的值被设置之后立即调用
        */
        
//        class stepCounter {
//            var totalSteps:Int {
//                
//            }
//        }
        /**
        属性和参数名称的区别 self.x
        */
        
        struct Points{
            var x = 0.0 ,y = 0.0
            func isToTheRightOfX(x:Double) ->Bool {
                return self.x > x
            }
        }
        let some = Points(x: 4.0, y: 5.0)
        if some.isToTheRightOfX(x: 2.0) {
            print(">>>>")
        }else{
            print("<<<<")
        }
        /**
         *  类、结构体和枚举    可以定义方法
         */
        /**
        mutating  变异方法  可以修改值类型的属性
        */
        struct CirclePoint {
            var x = 0.0 , y = 0.0
            mutating func moveByX(detailX:Double,y detailY:Double){
                x += detailX
                y += detailY
            }
        }
        
        var someCirclePoint = CirclePoint(x: 1.0, y: 1.0)
        someCirclePoint.moveByX(detailX: 2.0, y: 3.0)
        print(someCirclePoint.x)
        print(someCirclePoint.y)
        
        
        
        /**
        变异方法给self赋值
        */
        
        struct circlePoint {
            var x = 0.0 ,y = 0.0
            mutating func movebyXX(detailXX:Double,detailYY:Double){
                self = circlePoint(x: x + detailXX, y: y + detailYY)
            }
        }
        /**
         枚举
         切换开关的状态
         - OFF:
         - LOW:
         - HIGH:
         */
        enum TriSwitch {
            case OFF,LOW,HIGH
            
            mutating func next(){
                switch self {
                case .OFF:
                    self = .LOW
                    print("LOW")
                case .LOW:
                    self = .HIGH
                    print("HIGH")
                case .HIGH:
                    self = .OFF
                    print("OFF")
                }
            }
        }
        var ovenLight = TriSwitch.LOW
        
        ovenLight.next()
       
        ovenLight.next()
        
        ovenLight.next()
        /**
        在 Objective-C 里面，你只能为 Objective-C 的类定义类型方法（type-level methods）。在 Swift 中，你可以为所有的类、结构体和枚举定义类型方法：每一个类型方法都被它所支持的类型显式包含
        */
        
        /**
        *  GameExample
        */
        struct LevelTracker {
            static var highestUnlockedLevel = 1
            
            static func unclockLevel(level:Int){
                if level > highestUnlockedLevel {
                    highestUnlockedLevel = level
                }

            }
            
            static func leveleIsUnlocked(level:Int) ->Bool {
                return level <= highestUnlockedLevel
            }
            
            var currentLevel = 1
            mutating func advanceToLevel(level:Int) ->Bool {
                if LevelTracker.leveleIsUnlocked(level: level) {
                    currentLevel = level
                    return true
                }else{
                    return false
                }
            }
        }
        
        
        class Player {
            var tracker = LevelTracker()
            let playerName:String
            func completedLevel(level:Int) {
                LevelTracker.unclockLevel(level: level + 1)
                tracker.advanceToLevel(level: level + 1)
            }
            init(name:String) {
                playerName = name
            }
        }
        
        
        var playerJJ = Player(name: "jack")
        playerJJ.completedLevel(level: 4)
        
        print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
        if playerJJ.tracker.advanceToLevel(level: 3) {
             print("player is now on level 3")
        }else{
            print("level 3 has not yet been unlocked")
        }
        
        
        /**
        下表脚本语法  只读
        */
        struct TimeTable {
            let mutiplier:Int
            subscript(index:Int) -> Int {
                return mutiplier * index
            }
        }
        
        let threeTimesTable = TimeTable(mutiplier: 8)
        
//        threeTimesTable[5]
        
        /**
        类的继承和重写
        */
        //你可以通过把方法，属性或下标脚本标记为final来防止它们被重写，只需要在声明关键字前加上final特性即可。（例如：final var, final func, final class func, 以及 final subscript）
        
        //如果你重写了final方法，属性或下标脚本，在编译时会报错。在类扩展中的方法，属性或下标脚本也可以在扩展的定义里标记为 final。
        
        //你可以通过在关键字class前添加final特性（final class）来将整个类标记为 final 的，这样的类是不可被继承的，任何子类试图继承此类时，在编译时会报错。
       
         /**
        init 不带参数的构造器  不带外部名的构造器参数
        */
        struct Celsius {
            var tempCelsius:Double = 0.0
            init (fromeFahernheit fahernheit:Double) {
                tempCelsius = (fahernheit - 32.0) / 1.8
            }
            init (fromKelvin kelvin: Double) {
                tempCelsius = kelvin - 273.15
            }
            init (_ celsius:Double) {
                tempCelsius = celsius
            }
        }
        
        let bodyTemp = Celsius(28)
        let bodyKelvin = Celsius(fromKelvin: 330)
        print(bodyTemp)
        print(bodyKelvin)
       
    }
    
    
    func demo2(){
        /**
        值类型的构造器代理
        */
        //构造器可以通过调用其它构造器来完成实例的部分构造过程。这一过程称为构造器代理，它能减少多个构造器间的代码重复。
        struct Point {
            var x = 0.0 ,y = 0.0
        }
        
        struct Size {
            var width = 0.0 ,height = 0.0
        }
        
//        struct Rect {
//            var origin = Point()
//            var size = Size()
//            init () {}
//            init (origin:Point, size:Size) {
//                self.origin = origin;self.size = size
//            }
//            init (center:Point,size:Size) {
//                let originX = center.x - (size.width / 2)
//                let originY = center.y - (size.height / 2)
//                self.init(origin: Point(x: originX, y: originY),size:size)
//            }
//        }
// MARK: - 类的扩展
//        extension Rect {
//            init(center:Point,size:Size) {
//                let originX = center.x - (size.width / 2)
//                let originY = center.y - (size.height / 2)
//                self.init(origin: Point(x: originX, y: originY),size:size)
//            }
//        }
//        
//        let centerRect = Rect(center: Point(x: 4.0, y: 8.0), size: Size(width: 3.0, height: 3.0))
        
        /**
        指定构造器和便利构造器的语法
        */
        //指定构造器
//        init(parameters) {
//            statements
//        }
        //便利构造器 + convenience
//        convenience init(parameters) {
//            statements
//        }
       
        
        /**
        析构器的析构过程
        */
        struct Bank {
            static var coinsInBank = 10_000
            //分发
            static func vendCoins( numberOfCoinsToVend:Int) -> Int {
                var numberOfCoinsToVend = numberOfCoinsToVend
                numberOfCoinsToVend = min(numberOfCoinsToVend, coinsInBank)
                coinsInBank -= numberOfCoinsToVend
                return numberOfCoinsToVend
            }
            //收集
            static func receiveCoins(coins:Int) {
                coinsInBank += coins
            }
            
        }
        
        
        class Player {
            var coinsInPurse: Int
            init(coins:Int) {
                coinsInPurse = Bank.vendCoins(numberOfCoinsToVend: coins)
            }
            func winCoins(coins:Int) {
                coinsInPurse += Bank.vendCoins(numberOfCoinsToVend: coins)
            }
            deinit {
                Bank.receiveCoins(coins: coinsInPurse)
            }
        }
        
        
        var nickPlayer:Player? = Player(coins:100)
        
        nickPlayer!.winCoins(coins: 2_000)
        
        nickPlayer = nil
        
        /**
        swift  自动引用计数（2.0有点问题）
        */
        class Person {
            let name: String
            init(name: String) {
                self.name = name
                print("\(name) is being initialized")
            }
            deinit {
                print("\(name) is being deinitialized")
            }
        }
        var person1:Person?
        var person2:Person?
        var person3:Person?
        
        person1 = Person(name: "jack")
        
        person2 = person1;person3 = person1
        
        person1 = nil;person2 = nil;person3 = nil
        
        /**
        避免循环强引用  使用弱引用和无主引用来定义变量 关键字  分别是weak 和 unowned
        
        unowed 为非可选的类型时使用定义（可定义常量）
        */
        //Person和Apartment的例子展示了两个属性的值都允许为nil，并会潜在的产生循环强引用。这种场景最适合用弱引用来解决。
        
        //Customer和CreditCard的例子展示了一个属性的值允许为nil，而另一个属性的值不允许为nil，这也可能会产生循环强引用。这种场景最适合通过无主引用来解决
         
         /**
         闭包引起的循环引用(有问题)
         */
//        class HTMLElement {
//            weak var weakSelf = HTMLElement()
//            let name:String
//            let text:String?
//           
//            lazy var asHTML: Void ->String = {
////                [unowned self] in
//                if let text = weakSelf.text {
//                    return "aaa"
//                }else{
//                    return "bbb"
//                }
//            }
//            
//            init(name:String, text:String? = nil){
//                self.name = name
//                self.text = text
//            }
//            
//            deinit {
//                print("delloc")
//            }
//        }
         //闭包
         let names = ["Chris","Alex","Ewa","Barry","Daniella"]
        /*
        { (parameters) -> returnType in
        statements
        }
        */
       var reversed = names.sorted(by: { (s1: String, s2: String) -> Bool in
            return s1 > s2
        })
        print(reversed)
        reversed = names.sorted(by: { $0 > $1 })
        print(reversed)
        reversed = names.sorted(by: >)
        print(reversed)
        
         
         
         
         
         
         
         

         
        /**
        可选类型 ？代表值可以为空nil   ！代表值必须有值
        */
        class People {
            var residence:Residence?
        }
        
        class Residence {
            var numberOfRooms = 1
        }
        
        let pp = People()
        
        pp.residence = Residence()
        
        let runNum = pp.residence!.numberOfRooms
        
        if let runNumTime = pp.residence?.numberOfRooms {
            print("true")
        }else{
            print("false")
        }
        /**
        swift错误处理 用符号ErrorType协议的值表示
        */
        enum VendingMachingError:Error {
            case InvalidSelection
            case InsufficientFunds(required:Double)
            case OutOfStock
        }
        
        struct Item {
            var price:Double
            var count:Int
            
        }
        var inventory = [
            "Candy Bar": Item(price: 1.25, count: 7),
            "Chips": Item(price: 1.00, count: 4),
            "Pretzels": Item(price: 0.75, count: 11)
        ]
        var amountDeposited = 1.00
        
        func vend(itemName name:String) throws {
            guard var items = inventory[name] else {
                throw VendingMachingError.InvalidSelection
            }
            guard items.count > 0 else {
                throw VendingMachingError.OutOfStock
            }
            if amountDeposited >= items.price {
                amountDeposited -= items.price
                items.count = items.count - 1
                inventory[name] = items
            }else{
                let amountRequired = items.price - amountDeposited
                throw VendingMachingError.InsufficientFunds(required: amountDeposited)
                print(amountRequired)
            }
            
            
        }
        
        let favoriteSnacks = [
            "Alice": "Chips",
            "Bob": "Licorice",
            "Eve": "Pretzels",
        ]
        func buyfavoriteSnack(person:String) throws {
            let snackName = favoriteSnacks[person] ?? "candy Bar"
            try vend(itemName: snackName)
        }
        
        /**
        捕捉和处理错误
        */
//        do {
//            
////            try vend(itemName: "candy Bar")
//            
//        } catch VendingMachingError.InvalidSelection {
//            print("无效的选择")
//        } catch VendingMachingError.OutOfStock {
//            print("超出范围值")
//        } catch VendingMachingError.InsufficientFunds(required: 1.00) {
//            print("购买价格不符")
//        }
        /**
        类型转换 用关键字  is 判断是否时某类
        */
        /**
        as?  as!  向下转换类型
        */
//        for itemVV in 
        /**
        Any AnyObject的类型转换
        
        AnyObject 可以代表任何class类型的实例。
        Any 可以表示任何类型，包括方法类型（function types）
        */
       

        
        
        
        
        
        
       
        
        
        
        
        
 
    
  
    
    }
    func demo3(){

      //  类的扩展
    
        //        extension Person {
        //            func addName(name:String) ->Int {
        //                return 2
        //            }
        //        }
//        extension Double {
//            var km: Double { return self * 1_000.0 }
//            var m : Double { return self }
//            var cm: Double { return self / 100.0 }
//            var mm: Double { return self / 1_000.0 }
//            var ft: Double { return self / 3.28084 }
//            
//        }
//        
//        let oneInch = 25.4.mm
//        let threeFeet = 3.ft
        
        
       //扩展，协议，泛型  还没看
    }
    /**
     类似于OC的- (void)delloc
     */
    deinit {
        
    }
    
   
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
  
    
//    extension swiftBtn {
//        
//        var name :String?
//        var age :Double?
//        func addGoGoing(name:String,age:Double) ->Int {
//            if self.name = name {
//                return 1
//            }
//            if self.age = age {
//                return 2
//            }
//            else{
//                return 3
//            }
//        }
//    }


}



