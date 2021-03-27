
import Foundation

//GREEDY

//1.Спросить пользователя, сколько сдачи нужно сдать.
//2.Посчитать минимальное количество монет, с помощью которых можно это сделать.
//Используемые монеты:
//2 euro
//1 euro
//50 cent
//25 cent
//10 cent
//5 cent
//1 cent
struct ChangeMoney {
    var twoEurosCoin: Int
    var oneEuroCoin: Int
    var fiftyCentCoin: Int
    var twentyFiveCentCoin: Int
    var tenCentCoin: Int
    var fiveCentCoin: Int
    var oneCentCoin: Int
    
    func printWallet() {
        print("2 euro: \(twoEurosCoin), 1 euro: \(oneEuroCoin), 50 cent: \(fiftyCentCoin), 25 cent: \(twentyFiveCentCoin), 10 cent: \(tenCentCoin), 5 cent: \(fiveCentCoin), 1 cent: \(oneCentCoin)")
    }
}

func changeMoney (euros: Int, cents: Int) -> ChangeMoney {
    
    var sum = euros * 100 + cents
    
    let twoEurosCoins = sum / 200
    sum = sum % 200
    let oneEurosCoins = sum / 100
    sum = sum % 100
    let fiftyCentCoins = sum / 50
    sum = sum % 50
    let twentyFiveCentCoins = sum / 25
    sum = sum % 25
    let tenCentCoins = sum / 10
    sum = sum % 10
    let fiveCentCoins = sum / 5
    sum = sum % 5
    let oneCentCoins = sum
    
    let change = ChangeMoney(twoEurosCoin: twoEurosCoins, oneEuroCoin: oneEurosCoins, fiftyCentCoin: fiftyCentCoins, twentyFiveCentCoin: twentyFiveCentCoins, tenCentCoin: tenCentCoins, fiveCentCoin: fiveCentCoins, oneCentCoin: oneCentCoins)
    
    return change
    
}

let changeMoney1 = changeMoney(euros: 4, cents: 30)
let changeMoney2 = changeMoney(euros: 25, cents: 50)

changeMoney1.printWallet()
changeMoney2.printWallet()
