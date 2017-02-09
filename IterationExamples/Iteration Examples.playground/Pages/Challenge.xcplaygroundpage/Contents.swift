//: [Previous](@previous) / [Next](@next)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Below this line, try combining a loop and four statements that draw lines to generate the goal
//for value in 1...4{

//}

for x in stride(from: 0, through: 300, by: 20){
    x
    canvas.drawLine(fromX: x, fromY: 0, toX: 300, toY: x, lineWidth: 1)
}
for x in stride(from: 0, through: 300, by: 20){
    x
    canvas.drawLine(fromX: x, fromY: 300, toX: 0, toY: x, lineWidth: 1)
}
//for y in stride(from: 0, through: 300, by: 20){
for x in stride(from: 300, through: 0, by: -20){
    x
    canvas.drawLine(fromX: 300-x, fromY: 0, toX: 0, toY: x, lineWidth: 1)
}
//}
for x in stride(from: 300, through: 0, by: -20){
    x
    canvas.drawLine(fromX: 300, fromY: 300-x, toX: x, toY: 300, lineWidth: 1)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
