//
//  Filme.swift
//  App8MeusFilmes
//
//  Created by Paulo Calado on 04/05/18.
//  Copyright © 2018 Codgin. All rights reserved.
//

import Foundation
import UIKit

class Filme{
    var titulo:String!
    var descricao:String!
    var imagem: UIImage!
    
    init(titulo:String, descricao:String){
        self.titulo = titulo
        self.descricao = descricao
    }
}
