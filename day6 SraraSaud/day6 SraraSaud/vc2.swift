//
//  vc2.swift
//  day6 SraraSaud
//
//  Created by SARA SAUD on 2/27/1443 AH.
// mineu veiw controler
import UIKit


    let emoji = ["🍓",
                 "🎈",
                 "💖",
                 "🧸",
                 "🍓",
                 "🎈",
                 "💎",
                 "🎀"]


class ViewController2: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableViewEmoji: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =    tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! CustomCell
        
        cell.label.text = emoji [indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.label.backgroundColor = UIColor.systemPink
            
        }
        else {
            cell.label.backgroundColor =
            UIColor.lightGray
        }
        
        
        return cell
        
    }
    //alert part
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emojis = emoji[indexPath.row]
        
        let alertControler = UIAlertController(
            title: "\(emojis)",
            message: "Hello emoji",
            preferredStyle: .alert )
        
        
        alertControler.addAction (
            UIAlertAction(
                title: "OK ",
                style: .default,
                handler: { action in
                    print ("done")
            
                })
        )
        alertControler.addAction (
            UIAlertAction(
                title: "Cancel ",
                style: .default,
                handler: { action in
                    print ("cancil")
                    
                })
        )

        present(alertControler,animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableViewEmoji.delegate = self
        TableViewEmoji.dataSource = self
    }
}



class CustomCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
}
