//
//  DetalhesViewController.swift
//  App8MeusFilmes
//
//  Created by Paulo Calado on 08/05/18.
//  Copyright © 2018 Codgin. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    var filme: Filme!
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImage.image = filme.imagem
        movieTitle.text = filme.titulo
        movieDescription.text = filme.descricao
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
