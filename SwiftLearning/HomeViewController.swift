import UIKit

class HomeViewController: UIViewController {
    
    /// Notes:
    /// asset icon names should be one word in lower cased. i.e. woman_king instead of Woman King.
    /// Constraints should have up to 4 constraints max. When you have more than that, you are usually duplicating one that should not be there.
    /// *Run through constraints and how to use them*
    /// Use: `UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.black)` for font definitions
    ///
    ///
    /// Later:
    /// Create a StackView and how to use it. So that it allows stretching the name and it's not only constrained to Elon Musk
    /// Show how to make the image tappable (even though it's not a button)
    /// 
    /// ** Make an image open the phone photos and pick and image and replace
    ///
    ///
    ///
    /// Github Branch Naming Convention:
    /// - update/change button from black to red
    /// - feature/build tweets UI
    /// - fix/fix mis-aligned profile name
    
    lazy var coverPhotoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "cover_photo")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var profilePictureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "woman_king")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 35
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 3.5
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var followButton: UIButton = {
        let button = UIButton()
        button.setTitle("Follow", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 17.5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: UIFont.Weight.bold) // Button font setup
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleFollowUser), for: .touchUpInside)
        return button
    }()

    lazy var nameSurnameLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 2 // Number of line for a label can be adjust. Default is 1
        label.text = "Ntandoyenkosi Gumede"
        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.black) // Use this font approach
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var blueTickVerificationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ic_subscription_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 0
        //imageView.layer.borderColor = UIColor.white.cgColor
        //imageView.layer.borderWidth = 3.5
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var userNameLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "@ntandoyenkosi65_9"
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        // label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // Next Lesson
    lazy var nameVerificationStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [])
        stackView.alignment = .leading
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(coverPhotoImageView)
        view.addSubview(profilePictureImageView)
        view.addSubview(followButton)
        view.addSubview(nameSurnameLabel)
        view.addSubview(blueTickVerificationImageView)
        view.addSubview(userNameLabel)

        coverPhotoImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        coverPhotoImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        coverPhotoImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        coverPhotoImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        // coverPhotoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // coverPhotoImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        // This one could have been anchored to the left of the screen.
        profilePictureImageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor,
                                                      constant: 15).isActive = true
        profilePictureImageView.centerYAnchor.constraint(equalTo: coverPhotoImageView.bottomAnchor).isActive = true
        profilePictureImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        profilePictureImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        followButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor,
                                            constant: -15).isActive = true
        followButton.topAnchor.constraint(equalTo: coverPhotoImageView.bottomAnchor,
                                          constant: 25).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        followButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        nameSurnameLabel.leftAnchor.constraint(equalTo: profilePictureImageView.leftAnchor).isActive = true
        nameSurnameLabel.topAnchor.constraint(equalTo: profilePictureImageView.bottomAnchor,
                                              constant: 8).isActive = true
        // nameSurnameLabel.heightAnchor.constraint(equalToConstant: 70).isActive = true
        nameSurnameLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        /// Anchor the leftAnchor of the `blueTickVerificationImageView` to the rightAnchor of the `userNameLabel`
        blueTickVerificationImageView.leftAnchor.constraint(equalTo: nameSurnameLabel.rightAnchor, constant: 8).isActive = true
        blueTickVerificationImageView.centerYAnchor.constraint(equalTo: nameSurnameLabel.safeAreaLayoutGuide.centerYAnchor,
                                                           constant: 0).isActive = true
        blueTickVerificationImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        blueTickVerificationImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        userNameLabel.leftAnchor.constraint(equalTo: profilePictureImageView.leftAnchor).isActive = true
        userNameLabel.topAnchor.constraint(equalTo: nameSurnameLabel.bottomAnchor,
                                           constant: 4).isActive = true
        // userNameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        // userNameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    
        
        
    }
    
    @objc func handleFollowUser() {
        print("Follow user here..")
    }

}
