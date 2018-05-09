//
//  ViewController.swift
//  App8MeusFilmes
//
//  Created by Paulo Calado on 04/05/18.
//  Copyright © 2018 Codgin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmes.append(Filme(titulo:"007 Spectre", descricao: "descricao 007", imagem: #imageLiteral(resourceName: "filme1")))
        filmes.append(Filme(titulo:"Star Wars - The Last Jedi", descricao:"descricao Star Wars", imagem: #imageLiteral(resourceName: "filme2")))
        filmes.append(Filme(titulo:"Impacto Mortal", descricao:"provavel lixo", imagem: #imageLiteral(resourceName: "filme3")))
        filmes.append(Filme(titulo: "Deadpool", descricao: "deadpool", imagem:#imageLiteral(resourceName: "filme4")))
        filmes.append(Filme(titulo: "O Regresso", descricao:"dafuck", imagem:#imageLiteral(resourceName: "filme5")))
        filmes.append(Filme(titulo: "A Herdeira", descricao:"outra descricao",imagem:#imageLiteral(resourceName: "filme6")))
        filmes.append(Filme(titulo: "Caçadores de emoção", descricao:"outra ruim",imagem:#imageLiteral(resourceName: "filme7")))
        filmes.append(Filme(titulo: "Regresso do mal", descricao:"outra podre",imagem:#imageLiteral(resourceName: "filme8")))
        filmes.append(Filme(titulo: "Tarzan", descricao:"oselva",imagem:#imageLiteral(resourceName: "filme9")))
        filmes.append(Filme(titulo: "Hardcore", descricao:"outra descricao",imagem:#imageLiteral(resourceName: "filme10")))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme:Filme = filmes[indexPath.row]
        let movieCell:String = "movieCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: movieCell, for: indexPath) as! MovieCell //Customização da célula
        cell.movieTitle.text = filme.titulo
        cell.movieDescription.text = filme.descricao
        cell.movieImage.image = filme.imagem
        
       /* cell.movieImage.layer.cornerRadius = 42
        cell.movieImage.clipsToBounds = true arredondando a imagem programaticamente
        */
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueDetalhe"){
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let filme = self.filmes[indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesViewController
                viewControllerDestino.filme = filme
            }
            
        }
    }

}

