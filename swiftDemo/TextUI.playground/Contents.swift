//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
let a = 10
var name:String = "xuai"
let b:Float = 40



let lable = "zheshishenme"

let width = 90

let widLable = lable + String(width)


let widthStr = "i Hava \(width) cm"


var shopList = ["1","2","3"]
shopList[1] = "34"


var shoppDic = [
    "key1":"value1",
    "key2":"value2"
]
shoppDic["key3"] = "value3"

let shopArray = [String]()

let shopDic = Dictionary<String,Float>()

let tempArr = [75, 43, 103, 87, 12]

var tempStr = 0
for score in tempArr {
    if score > 50 {
        tempStr += 3
     } else {
        tempStr += 1
    }
}


var optionalString:String? = "hello"

optionalString == nil


//嵌套
func makeIncrementer() ->Int {
    var Y = 10
    func add() {
        Y += 5
    }
    add()
    return Y
}

let num =  makeIncrementer()

//可以在一个函数中返回另外的一个函数
func addIncrementer() ->(Int -> Int){
    
    func addOne(number: Int) -> Int{
        return 1 + number
    }
    
    return addOne
}
var increment = addIncrementer()

increment(7)

//函数可以作为其他函数的参数进行传递
func hasAnyMatches(list: [Int],condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}


