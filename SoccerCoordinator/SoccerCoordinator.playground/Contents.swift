// Soccer Coordinator Project 1 for Treehouse IOS TechDegree

import UIKit

// Player Data - represented by a dictionary

let joeSmith: [String: Any] = ["name": "Joe Smith", "height": 42, "hasSoccerExperience": true, "guardianNames": "Jim and Jan Smith"]
let jillTanner: [String: Any] = ["name": "Jill Tanner", "height": 36, "hasSoccerExperience": true, "guardianNames": "Clara Tanner"]
let billBon: [String: Any] = ["name": "Bill Bon", "height": 43, "hasSoccerExperience": true, "guardianNames": "Sara and Jenny Bon"]
let evaGordon: [String: Any] = ["name": "Eva Gordon", "height": 45, "hasSoccerExperience": false, "guardianNames": "Wendy and Mike Gordon"]
let mattGill: [String: Any] = ["name": "Matt Gill", "height": 40, "hasSoccerExperience": false, "guardianNames": "Matt Gill"]
let kimmyStein: [String: Any] = ["name": "Kimmy Stein", "height": 41, "hasSoccerExperience": false, "guardianNames": "Bill and Hillary Stein"]
let sammyAdams: [String: Any] = ["name": "Sammy Adams", "height": 45, "hasSoccerExperience": false, "guardianNames": "Jeff Adams"]
let karlSaygan: [String: Any] = ["name": "Karl Saygan", "height": 42, "hasSoccerExperience": true, "guardianNames": "Heather Bledsoe"]
let suzaneGreenberg: [String: Any] = ["name": "Suzane Greenberg", "height": 44, "hasSoccerExperience": true, "guardianNames": "Henrietta Dumas"]
let salDali: [String: Any] = ["name": "Sal Dali", "height": 41, "hasSoccerExperience": false, "guardianNames": "Gala Dali"]
let joeKavalier: [String: Any] = ["name": "Joe Kavalier", "height": 39, "hasSoccerExperience": false, "guardianNames": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: Any] = ["name": "Ben Finkelstein", "height": 44, "hasSoccerExperience": false, "guardianNames": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: Any] = ["name": "Diego Soto", "height": 41, "hasSoccerExperience": true, "guardianNames": "Robin and Sarika Soto"]
let chloeAlaska: [String: Any] = ["name": "Chloe Alaska", "height": 47, "hasSoccerExperience": false, "guardianNames": "David and Jamie Alaska"]
let arnoldWillis: [String: Any] = ["name": "Arnold Willis", "height": 43, "hasSoccerExperience": false, "guardianNames": "Claire Willis"]
let phillipHelm: [String: Any] = ["name": "Phillip Helm", "height": 44, "hasSoccerExperience": true, "guardianNames": "Thomas Helm and Eva Jones"]
let lesClay: [String: Any] = ["name": "Les Clay", "height": 42, "hasSoccerExperience": true, "guardianNames": "Wynonna Brown"]
let herschelKrustofski: [String: Any] = ["name": "Herschel Krustofski", "height": 45, "hasSoccerExperience": true, "guardianNames": "Hyman and Rachel Krustofski"]

// A single collection of players

var playersRoster = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Sort players by experience

var playersWithExperience: [[String: Any]] = []
var playersWithoutExperience: [[String: Any]] = []

for player in playersRoster {
    if player["hasSoccerExperience"] as! Bool == true {
        playersWithExperience.append(player)
    } else {
        playersWithoutExperience.append(player)
    }
}

// three teams

var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
var teamDragons: [[String: Any]] = []

// Sort players with experience into 3 different teams

for playersWithExperience in playersRoster {
    if playersWithExperience["hasSoccerExperience"] as? Bool == true {
        if teamSharks.count < teamRaptors.count {
            teamSharks.append(playersWithExperience)
        } else if teamRaptors.count < teamDragons.count {
            teamRaptors.append(playersWithExperience)
        } else {
            teamDragons.append(playersWithExperience)
        }
    }
}

// Sort players without experience into 3 different teams

for playersWithoutExperience in playersRoster {
    if playersWithoutExperience["hasSoccerExperience"] as? Bool == false {
        if teamSharks.count < teamRaptors.count {
            teamSharks.append(playersWithoutExperience)
        } else if teamRaptors.count < teamDragons.count {
            teamRaptors.append(playersWithoutExperience)
        } else {
            teamDragons.append(playersWithoutExperience)
        }
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
        let teamPlayerName = teamPlayer["name"] as? String
        let playerName = player["name"] as? String
        if teamPlayerName == playerName {
            team = "Sharks"
            practice = "March 17th, at 3PM"
        }
    }
    
    for teamPlayer in teamRaptors {
        let teamPlayerName = teamPlayer["name"] as? String
        let playerName = player["name"] as? String
        if teamPlayerName == playerName {
            team = "Raptors"
            practice = "March 18th, at 1PM"
        }
    }
    
    for teamPlayer in teamDragons {
        let teamPlayerName = teamPlayer["name"] as? String
        let playerName = player["name"] as? String
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
