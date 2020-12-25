//
//  main.swift
//  lesson3
//
//  Created by RAISA on 22.12.2020.
//  Copyright © 2020 RAISA. All rights reserved.
//

import Foundation


//let fioList = [
//    ("Иванов", "Иван", "Иванович"),
//    ("Петров", "Петр", "Петрович"),
 //   ("Сидоров", "Сидор", "Сидорович"),
 //   ("Александров", "Александр", "Александрович")
//]
//0 short
//1 name + father's name
//2 full name
//enumeration
//enum PrintFioStyle: String {
  //  case short = "Краткий"
  //  case middle = "sredny"
  //  case full = "vse"
//}
//func printFio(fioList: [(String, String, String)], style: PrintFioStyle) {
//    for fio in fioList {
        
   //     print(style.rawValue)
        
   //     switch style {
   //     case .short:
    //        print(fio.1)
    //    case .middle:
     //       print(fio.1, fio.2)
            
     //   case .full:
    //    print(fio.0, fio.1, fio.2)
       // default:
          //  print("no")
          //  return
  //  }
//}
//}
//printFio(fioList: fioList, style: .middle)

enum EngineStart {
    case started, off
    
}

enum Windows{
    case opened, closed
}


    struct SportCar { //это структура кот содержит перечисления, так?
      
        var carBrand: String
        mutating func changeCarBrand(a:String) {
            switch a {
            case "ferrari":
                self.carBrand = "ferrari"
            case "lada":
                self.carBrand = "lada"
            case "BMW":
                self.carBrand = "BMW"
            default:
                print("not available")
            }
        }

        let year: Int
        var trunkVolume: Double{ // это я сделала по анологии с методичкой на чего-то пока не поняла как вызывать
            didSet {
                let freeSpace = trunkVolume - FilledTrunkVolume
            print("free space is \(freeSpace)")
        }
        
        }
        
        
        var EngineStart: EngineStart{
             willSet {
                       if newValue == .started {
                           print ("\(carBrand) engine is on")
                       } else {print("\(carBrand) engine is off")}
        }
    }
        let windows: Windows
        let FilledTrunkVolume: Double
    }

struct TrunkCar {
    let carBrand: String
    let year: Int
    let trunkVolume: Int
    var EngineStart: EngineStart
    let windows: Windows
    let FilledTrunkVolume: Double
}


    
var car1 = SportCar(carBrand: "lada", year: 1982,trunkVolume: 30, EngineStart: .started, windows: .closed, FilledTrunkVolume: 5 )

    var car2 = SportCar(carBrand: "ferrari", year: 2021, trunkVolume: 30, EngineStart: .off, windows: .closed, FilledTrunkVolume: 5)

    var trunk1 = TrunkCar(carBrand: "Kamaz", year: 2019, trunkVolume: 600, EngineStart: .started, windows: .opened, FilledTrunkVolume: 300)
    var trunk2 = TrunkCar(carBrand: "VAZ", year: 2019, trunkVolume: 600, EngineStart: .started, windows: .opened, FilledTrunkVolume: 300)


car1.changeCarBrand(a: "lada")
car1.EngineStart = .off
car2.changeCarBrand(a: "ferrari")
car2.EngineStart = .started
trunk1.EngineStart = .started



print("Your first car is: \(car1.carBrand), and engine is \(car1.EngineStart), and windows are \(car1.windows), maybe you should buy \(car2.carBrand), and engine is \(car2.EngineStart)")
print("Be careful: \(trunk1.carBrand), engine is \(trunk1.EngineStart)")

