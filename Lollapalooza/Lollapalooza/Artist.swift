//
//  Artist.swift
//  Lollapalooza
//
//  Created by Lucas Cunha on 10/04/23.
//

import Foundation
import SwiftUI

struct Artist: Identifiable{
    var id = UUID()
    var name: String
    var profileImage: String
    var descriptionImage: String
    var description: String
    var musics: [Music]
    var favorite: Bool
    var tourName: String
    var tour: String
}
