//
//  DetailViewController.swift
//  bangtan_2
//
//  Created by 施馨檸 on 20/12/2017.
//  Copyright © 2017 施馨檸. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var memberDetailImageView: UIImageView!
    
    @IBOutlet weak var memberInfoTextView: UITextView!
    var detailImageUrl = ""
    var info = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(detailImageUrl)
        let url = URL(string: detailImageUrl)
        let data = try? Data(contentsOf: url!)
        let task = URLSession.shared.dataTask(with: url!) { (data, res, err) in
            if let data = data {
                self.memberDetailImageView.image = UIImage(data: data)
                
            }
        }
        task.resume()
        memberInfoTextView.text = info
        
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
