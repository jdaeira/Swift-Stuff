
var sum = 0
var counter = 1
var message = "Hello, John!"

while counter <= 5 {
    sum += counter
    counter += 1
}

print(sum)

counter = 1
repeat {
 print(message)
 counter += 1
} while counter <= 5

// Use the while loop only run if certain conditions are meet
// Use the repeat while loop if you want the condition to run at least once

// Challenge 6
var cashOnHand:Double = 2000
var runningCash:Double = 0
var percentGain:Double = 10 / 100
var totalGain:Double = 0
var yearsToInvest:Int = 5
var yearsElapsed:Int = 0

repeat {
     runningCash = cashOnHand
     totalGain = runningCash * percentGain
     cashOnHand = runningCash + totalGain
     print(cashOnHand)
     yearsElapsed += 1
} while yearsElapsed < yearsToInvest

