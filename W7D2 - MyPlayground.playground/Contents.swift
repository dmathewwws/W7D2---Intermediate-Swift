//: Playground - noun: a place where people can play

import UIKit

var instuctors = ["Dan", "Hirad", "Ian"]

if let findIndex = instuctors.indexOf("Danny"){
    print("We found something w/ index \(findIndex)")
}

class Vehicle{
    
    var model:String
    
    init(aModel:String){
        model = aModel
    }
    
}

class Car : Vehicle {
    
    var autoParking:String?
    
}

var vehicles = [Vehicle]()

vehicles.append(Vehicle(aModel: "Truck"))
vehicles.append(Car(aModel: "Sedan"))

print(vehicles)

if let sedan = vehicles[1] as? Car{
    
}

class Apartment {
    
    weak var tenant:Tenant?
    
    init(){
        tenant = Tenant()
    }
    
}

class Tenant {
    
    unowned let apartment:Apartment
    
    init(){
        apartment = Apartment()
    }
}

func peek (value:Int) -> Int {
    return value
}

func peek (value:Double) -> Double {
    return value
}

func peek (value:String) -> String {
    return value
}

//func peek (value:AnyObject) -> AnyObject {
//    return value
//}




//func peek<T> (value:T) -> String {
//    return "Hello"
//}
//
//let p = peek("hello").capitalizedString

func findMeTheIndex<T:Equatable> (sougth:T, array:[T]) -> Int? {
    
    for i in 0..<array.count{
        if sougth == array[i]{
            return i
        }
    }
    
    return nil
}

findMeTheIndex(7, array: [3,4,7,8])

infix operator ** { associativity left precedence 160 }

func ** (left: String, right: Int) -> String {
    if right <= 0 {
        return ""
    }
    
    var result = left
    
    for _ in 1..<right {
        result += left
    }
    
    return result
    
}

"a" ** 6









