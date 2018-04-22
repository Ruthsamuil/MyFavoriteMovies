//
//  MoviedetailsModel.swift
//  Movies
//
//  Created by Ruth on 4/21/18.
//  Copyright © 2018 Ruth. All rights reserved.
//

import Foundation

class MoviedetailsModel {
    
    var laImage : String
    var Latext : String
    var Destext : String
    
    init ( laImage : String ,Latext : String ,Destext : String){
        
        self.laImage = laImage
        self.Destext = Destext
        self.Latext = Latext
    }
}
