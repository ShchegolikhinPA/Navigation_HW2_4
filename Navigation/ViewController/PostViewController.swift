
import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let postPVC = FeedViewController()
        self.title = postPVC.post.title
        
        let firstButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(tap))
        self.navigationItem.rightBarButtonItem  = firstButton
        
        let secondButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(tap))
        self.navigationItem.rightBarButtonItem  = secondButton
        
    }
    
    @objc func tap(){
        let infoVC = InfoViewController()
        //infoVC.view.backgroundColor = .red
        self.present(infoVC, animated: true, completion: nil)
    }
}
