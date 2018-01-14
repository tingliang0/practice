//: Playground - noun: a place where people can play

import UIKit

// Adding & updating key-value pairs
var playerStats: [String: Int] = ["HP": 100, "Attack": 35, "Gold": 29]
playerStats["Defense"] = 24
playerStats["HP"] = 95
let oldVar = playerStats.updateValue(3, forKey: "Attack")

// Removing key-value pairs
playerStats["Gold"] = nil
playerStats.removeValue(forKey: "Attack")

// Nested dictionaries
var questDictionary = [
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",
        "Hidden Objective": "Complete the quest in under 5 minutes"
    ]
]

var questObjective = questDictionary["Fetch Gemstones"]?["Objective"]
print(playerStats)
print(questObjective)
