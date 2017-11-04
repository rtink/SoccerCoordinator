// Soccer Coordinator Project 1 for Treehouse IOS TechDegree

import UIKit

// Player Data - represented by a dictionary

let player1: [String: Any] = ["name": "Joe Smith", "Height": 42, "soccerExperience": true, "guardianNames": "Jim and Jan Smith"]
let player2: [String: Any] = ["name": "Jill Tanner", "Height": 36, "soccerExperience": true, "guardianNames": "Clara Tanner"]
let player3: [String: Any] = ["name": "Bill Bon", "Height": 43, "soccerExperience": true, "guardianNames": "Sara and Jenny Bon"]
let player4: [String: Any] = ["name": "Eva Gordon", "Height": 45, "soccerExperience": false, "guardianNames": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["name": "Matt Gill", "Height": 40, "soccerExperience": false, "guardianNames": "Matt Gill"]
let player6: [String: Any] = ["name": "Kimmy Stein", "Height": 41, "soccerExperience": false, "guardianNames": "Bill and Hillary Stein"]
let player7: [String: Any] = ["name": "Sammy Adams", "Height": 45, "soccerExperience": false, "guardianNames": "Jeff Adams"]
let player8: [String: Any] = ["name": "Karl Saygan", "Height": 42, "soccerExperience": true, "guardianNames": "Heather Bledsoe"]
let player9: [String: Any] = ["name": "Suzane Greenberg", "Height": 44, "soccerExperience": true, "guardianNames": "Henrietta Dumas"]
let player10: [String: Any] = ["name": "Sal Dali", "Height": 41, "soccerExperience": false, "guardianNames": "Gala Dali"]
let player11: [String: Any] = ["name": "Joe Kavalier", "Height": 39, "soccerExperience": false, "guardianNames": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["name": "Ben Finkelstein", "Height": 44, "soccerExperience": false, "guardianNames": "Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["name": "Diego Soto", "Height": 41, "soccerExperience": true, "guardianNames": "Robin and Sarika Soto"]
let player14: [String: Any] = ["name": "Chloe Alaska", "Height": 47, "soccerExperience": false, "guardianNames": "David and Jamie Alaska"]
let player15: [String: Any] = ["name": "Arnold Willis", "Height": 43, "soccerExperience": false, "guardianNames": "Claire Willis"]
let player16: [String: Any] = ["name": "Phillip Helm", "Height": 44, "soccerExperience": true, "guardianNames": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["name": "Les Clay", "Height": 42, "soccerExperience": true, "guardianNames": "Wynonna Brown"]
let player18: [String: Any] = ["name": "Herschel Krustofski", "Height": 45, "soccerExperience": true, "guardianNames": "Hyman and Rachel Krustofski"]

// A single collection of players

var playersRoster = [player1, player2, player3, player4 ,player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Sort players by experience

var yesSoccerExperience: [[String: Any]] = []
var noSoccerExperience: [[String: Any]] = []

for player in playersRoster {
    if player["soccerExperience"] as! Bool == true {
        yesSoccerExperience.append(player)
    } else {
        noSoccerExperience.append(player)
    }
}

// three teams

var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
var teamDragons: [[String: Any]] = []

// Sort players with experience into 3 different teams

for index in 0..<yesSoccerExperience.count {
    switch true {
    case index % 3 == 0:
        teamSharks.append(yesSoccerExperience[index])
    case index % 3 == 1:
        teamRaptors.append(yesSoccerExperience[index])
    case index % 3 == 2:
        teamDragons.append(yesSoccerExperience[index])
    default:
        break
    }
}

// Sort players without experience into 3 different teams

for index in 0..<noSoccerExperience.count {
    switch true {
    case index % 3 == 0:
        teamSharks.append(noSoccerExperience[index])
    case index % 3 == 1:
        teamRaptors.append(noSoccerExperience[index])
    case index % 3 == 2:
        teamDragons.append(noSoccerExperience[index])
    default:
        break
    }
}

// Create letter information

var letters: [String] = []

for player in playersRoster {
    let guardianNames = player["guardianNames"] as! String
    let name = player["name"] as! String
    var team = ""
    var practice = ""
    
    for teamPlayer in teamSharks {
        let teamPlayerName = teamPlayer["name"] as! String
        let playerName = player["name"] as! String
        if teamPlayerName == playerName {
            team = "Sharks"
            practice = "March 17th, at 3PM"
        }
    }
    
    for teamPlayer in teamRaptors {
        let teamPlayerName = teamPlayer["name"] as! String
        let playerName = player["name"] as! String
        if teamPlayerName == playerName {
            team = "Raptors"
            practice = "March 18th, at 1PM"
        }
    }
    
    for teamPlayer in teamDragons {
        let teamPlayerName = teamPlayer["name"] as! String
        let playerName = player["name"] as! String
        if teamPlayerName == playerName {
            team = "Dragons"
            practice = "March 18th, at 1PM"
        }
    }
    
    let letter = "Dear \(guardianNames),\n We are happy to inform you that your child, \(name) has made is on the \(team) team. \nThe first practice is at \(practice). It will be a fun and rewarding season. \nSincerely, the Team Coordinator"
    letters.append(letter)
}

// Print player letters

for letter in letters {
    print(letter)
}
