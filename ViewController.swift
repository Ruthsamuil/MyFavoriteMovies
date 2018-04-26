//
//  ViewController.swift
//  Movies
//
//  Created by Ruth on 4/20/18.
//  Copyright © 2018 Ruth. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

    var Movies = [MoviedetailsModel]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        Movies.append(MoviedetailsModel(laImage: "Naria", Latext: "Narnia", Destext: "the best Movie"))
        Movies.append(MoviedetailsModel(laImage: "MatabSena3y", Latext: "Matab sena3y", Destext: "I Love Ahmed Helmy"))
        Movies.append(MoviedetailsModel(laImage: "Ratatoi", Latext: "Ratatoi", Destext: "it is the cooker Mouse"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellVC", for: indexPath) as! CellVC
        
        cell.Labertext.text = Movies[indexPath.row].Latext
        cell.Destextdescreption.text = Movies [indexPath.row].Destext
        cell.imageview.image = UIImage(named: Movies[indexPath.row].laImage)
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "MovieSegue", sender: Movies[indexPath.row])
        
          }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? SecondVC{
            if let Movies = sender as? MoviedetailsModel {
                destination.name = Movies.Latext
                destination.DES = Movies.Destext
                destination.image = Movies.laImage
            }
            
        }
    }
}
