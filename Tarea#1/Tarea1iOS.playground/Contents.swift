import UIKit


func createArrayWithContent(value:String, size:Int) -> [String]{
    var array: [String] = []
    
    for _ in 1...size {
        array.append(value)
    }
    
    return array
}

func printDifferentNumbers(num:Int){
    
    for i in 1...num {
        if i.isMultiple(of: 2) {
            print("\(i) Number is even")
        } else {
            print("\(i) Number is odd")
        }
    }
}

func searchTheLongestString(val1:String, val2:String) -> String{
    if (val1.count > val2.count){
        return val1
    }else{
        return val2
    }
}

func isFibonnacciNumber(num:Int){
    print("Is Fibonnacci:  \(isPerfectSquare(num:((5*num*num) + 4)) || isPerfectSquare(num:((5*num*num) - 4)))")
}

func isPerfectSquare(num:Int) -> Bool{
    let val = sqrt(Double(num))
    return((val*val).isEqual(to: Double(num)))
}



for val in createArrayWithContent(value: "Wow", size: 4){
    print(val)
}
printDifferentNumbers(num: 3)
print(searchTheLongestString(val1: "Dog", val2: "Hello"))
print(isFibonnacciNumber(num: 5))
print(isFibonnacciNumber(num: 6))

