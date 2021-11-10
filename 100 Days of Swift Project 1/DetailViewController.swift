//
//  DetailViewController.swift
//  DetailViewController
//
//  Created by Seb Vidal on 10/11/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var imageIndex = 0
    var imageCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(imageIndex) of \(imageCount)"
        navigationItem.largeTitleDisplayMode = .never

        if let image = selectedImage {
            imageView.image = UIImage(named: image)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnTap = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
