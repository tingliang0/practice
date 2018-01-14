//: Playground - noun: a place where people can play

import UIKit

// Creating sets
var emptySet = Set<Int>()
var emptySet2: Set<Int> = []

var activeQuests: Set = ["Fetch Gemstones", "Big Boss", "The Undertaker"]
var completedQuests: Set = ["Big Boss", "All-4-One", "Hereafter"]

// Count and isEmpty
activeQuests.count
activeQuests.isEmpty

// Inserting and removing elements
activeQuests.insert("Only The Strong")
activeQuests.remove("The Undertaker")

// More common methods
activeQuests.sorted()
activeQuests.contains("All-4-One")

// Iterating
for quest in activeQuests {
    print(quest)
}

// Set operations
activeQuests.intersection(completedQuests)
activeQuests.symmetricDifference(completedQuests)
activeQuests.union(completedQuests)
activeQuests.subtract(completedQuests)


print(activeQuests)
