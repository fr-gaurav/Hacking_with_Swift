//
//  DetailViewController.swift
//  Example_1
//
//  Created by YADAV Gaurav[FRJP:IT Store IT & RFID](Yadav Gaurav) on 2020/12/31.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var backgroundView: UIImageView!
    var selectedImage: String?
    var backgroundImage: String?
    var title_name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = title_name
        navigationItem.largeTitleDisplayMode = .never
        imageView.layer.zPosition = 2
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
        
        if let bkgdimageToLoad = backgroundImage{
            backgroundView.image = UIImage(named: bkgdimageToLoad)
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
