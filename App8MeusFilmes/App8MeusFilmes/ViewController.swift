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
        
        filmes.append(Filme(titulo:"filme1", descricao: "descricao1"))
        filmes.append(Filme(titulo:"filme 2", descricao:"descricao 2"))
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: movieCell, for: indexPath)
        cell.textLabel?.text = filme.titulo
        return cell
    }

}

