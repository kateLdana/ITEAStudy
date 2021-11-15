//
//  ViewController.swift
//  less15HWJSON
//
//  Created by User on 15.11.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let urlSession = URLSession.shared
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=55957fcf3ba81b137f8fc01ac5a31fb5&language=en-US&page=1") else {
            return
        }
        
        urlSession.dataTask(with: url) { data, responce, error in
            print(String(data: data!, encoding: .utf8))
            let decoder = JSONDecoder()
            let musicWraper = try? decoder.decode(MusicPage.self, from: data!)
            print(musicWraper)
        }.resume()
    }

}

//data
