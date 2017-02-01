//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func add(_ a: Int,_ b: Int)->Int
{
    return a+b
}

func sub(_ a: Int,_ b: Int)->Int
{
    return a-b
}

func div(_ a: Int,_ b: Int)->Int
{
    return a/b
}

func mult(_ a: Int,_ b: Int)->Int
{
    return a*b
}

func doMath(_ a: Int,_ b: Int,_ op: Character)->Int
{
    var ans: Int = 0
    if op == "+" {
        ans = add(a, b)
    } else if op == "-" {
        ans = sub(a, b)
    } else if op == "/" {
        ans = div(a, b)
    } else if op == "*" {
        ans = mult(a, b)
    }
    return ans
}

typealias binOp = (Int, Int)->Int
let ops: [String: binOp]=["+":add, "-":sub, "/":div, "*":mult]


func doLessMath(_ a: Int,_ b: Int,_ op: Character)->Int
{
    let opFunc = ops["\(op)"]
    return opFunc!(a, b)
}

doLessMath(4, 3, "+")
doLessMath(4, 3, "-")
doLessMath(4, 2, "/")
doLessMath(4, 3, "*")





