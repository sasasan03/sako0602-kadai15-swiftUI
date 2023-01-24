import UIKit

struct FruitsPropaty {
    var id = UUID()
    var name: String
    var isChecked: Bool
}
var fruits = [
    FruitsPropaty(name: "りんご", isChecked: false),
    FruitsPropaty(name: "みかん", isChecked: true),
    FruitsPropaty(name: "バナナ", isChecked: false),
    FruitsPropaty(name: "パイナップル", isChecked: true),
]

//fruits
//fruits.forEach { item in
//    var aaa = item.isChecked
//    let bool = aaa.toggle()
//    item.isChecked = bool
//}
//
//for item in fruits {
//    item.isChecked.toggle()
//}

//fruits.forEach {
//    $0.isChecked.toggle()
//}


//func aaa() -> Bool {
//    for item in fruits {
//        
//        item.isChecked.toggle()
//    }
//    return
//}
