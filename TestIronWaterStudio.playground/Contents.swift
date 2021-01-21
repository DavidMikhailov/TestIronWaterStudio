import UIKit

// MARK: Задание 1

// 1 способ
print("Исходные массивы")
var array6: [Int] = [1,2,67,4,5,99]
var array5: [Int] = [5,7,87,49,9]
print(array6)
print(array5)

func reverseInteger(array: [Int]) -> [Int]{
        var array = array
        var first = 0
        var last = array.count - 1
        while first < last {
            array.swapAt(first, last)
            first += 1
            last -= 1
        }
        return array
    }
print("Реверсированные массивы")
var reverseArray = reverseInteger(array: array6)
print(reverseArray)
var reverseArray5 = reverseInteger(array: array5)
print(reverseArray5)



// 2 способ

print("Исходные массивы")
var array1 = [1, 2, 34, 4, 5, 6, 7]
var array3 = [34, 66, 2, 8]
print(array1)
print(array3)

func reverse(array: [Int]) -> [Int] {
    var array = array
    var index = 0
    var helper : Int
    while index <= (array.count / 2 - 1) {
        helper = array[index]
        array[index] = array[array.count - index - 1]
        array[array.count - index - 1] = helper
        index += 1
    }
    return array
}
print("Реверсированные массивы")
var reverseArray1 = reverse(array: array1)
print(reverseArray1)
var reverseArray3 = reverse(array: array3)
print(reverseArray3)

// MARK: Задание 2

let n = 4 //строки
let m = 5 // колонки

var matrix: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)

for i in 0..<matrix.count {
    for j in 0..<matrix[i].count {
        matrix[i][j] = Int(arc4random_uniform(10))
    }
}
print("Исходная матрица")
for row in matrix {
    print(row)
}


for i in 0..<matrix.count {
    if i % 2 != 0 { //индекс строки обязательно должен быть нечётным
        for j in 0..<matrix[i].count {
            let helper = matrix[i][j]
            matrix[i][j] = matrix[i-1][j] // переставляем элементы
            matrix[i-1][j] = helper
        }
    }
}
print("Измененная матрица")
for row in matrix {
    print(row)
}
