//: Playground - noun: a place where people can play

import UIKit

//Arreglos.
let highScores = ["a","b"]

//indices
let devices = ["iphone", "iPad"]
print("devices[1]: " + devices[1])
devices.count

let friend = ["Friend1", "Friend2"]
/*
func invite(friends: String) {
    print("Oye, \(friend), ¡ven a mi fiesta el viernes!")
}
 invite(friend[1])
*/

//Structs
struct Song {
    var title: String
    var artist: String
    var duration: Int
    
    //propiedad calculada
    var formattedDuration: String {
        let minutes = duration / 60
        //Obteniendo los segundos
        let seconds = duration % 60
        return "\(minutes)m \(seconds)"
    }
}

let song = Song(title: "llaves, telefono y cartera", artist: "LNG/SHT", duration: 180)
var newSong = Song(title: "La isla bonita", artist: "Madonna", duration: 120)

song.artist
newSong.formattedDuration

newSong.duration = 360
newSong.formattedDuration













