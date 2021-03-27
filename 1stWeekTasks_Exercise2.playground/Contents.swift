
import Foundation

//MARIO

//1. Введите целое положительное число от 0 до 23.
//2. Программа должна нарисовать полупирамиду, подобную той, которая появляется в конце первого уровня игры "Mario".

func pyramide (height: Int) {
    
    if height >= 0 && height <= 23 {
        for each in 0...height {
            var count: Int = 0
            var string: String = ""
            repeat {
                if count == 0 {
                    string = ""
                } else {
                string += "#"
                }
                count += 1
            } while count < each
            print("\(string)")
        }
    } else {
        print("Некорректные входные данные.")
    }
    
}

pyramide(height: 10)
pyramide(height: 0)
pyramide(height: 23)
pyramide(height: 100)
