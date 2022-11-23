import UIKit

class HomeViewController: UIViewController {
    
    let aButton : UIButton = {
        let button = UIButton()

        button.setTitle("Tap Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.frame = CGRect(x: 100, y: 400, width: 200, height: 50)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(HomeViewController.self, action: #selector(showInLabel), for: .touchUpInside)
        return button
    }()
        
    @objc func showInLabel() {
        aLabel.text = "Coding is Fun."
    }
    
    let aLabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.backgroundColor = .systemGreen
        label.frame = CGRect(x: 100, y: 400, width: 200, height: 50)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(aButton)
        view.addSubview(aLabel)
        
        aButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        aButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        aButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        aButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        aButton.topAnchor.constraint(equalTo: aLabel.bottomAnchor, constant: 10).isActive = true
        
        aLabel.centerXAnchor.constraint(equalTo: aButton.centerXAnchor).isActive = true
        aLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        aLabel.widthAnchor.constraint(equalTo: aButton.widthAnchor).isActive = true
    }
}
