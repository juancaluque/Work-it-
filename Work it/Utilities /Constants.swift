//
//  Constants.swift
//  Work it
//
//  Created by Juan Luque on 1/25/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import Foundation


// API

let API_KEY = "db96b4e777451eba7b31be30ff6419cc"
func URL(forApiKey key: String, withTag tag: String) -> String {
    let url = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&tags=\(tag)&format=json&nojsoncallback=1"
    return url
}

let chestExcercises = ["Push Ups", "Front Lifting", "High Push Ups"]
let backExcercises = ["Pull Ups", "Wide Push Ups", "Shoulder Press"]
let legsExcercises = ["Squad", "Lunges", "Jumps"]
let absExcercises = ["Leg Raise", "Crunch", "Plank"]
let bicepExcercises = ["Pull Ups", "Dumbbell", "Bar Lifting"]
let tricepExcercises = ["Diamond Push Ups", "Push Ups", "Dumbbell"]



