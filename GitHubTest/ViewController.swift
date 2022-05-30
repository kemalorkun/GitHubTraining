//
//  ViewController.swift
//  GitHubTest
//
//  Created by Kemal Orkun on 30.05.2022.
//

import UIKit

extension Collection where Indices.Iterator.Element == Index {
    subscript (safe index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}


class HomeViewController: UIViewController {
    
    // MARK: - Views
    
//    lazy var collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//        layout.minimumLineSpacing = 10
//        layout.minimumInteritemSpacing = 10
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.backgroundColor = Theme.primaryBackground.color
//        collectionView.register(SearchItemCell.self)
//        return collectionView
//    }()
    
    private let orkunLabel: UILabel = {
        $0.text = "Orkun"
        $0.font = UIFont.boldSystemFont(ofSize: 30)
        $0.textColor = .systemOrange
        return $0
    }(UILabel())
    
    // MARK: - Properties
    private let systemTitles: (title: String, subtitle: String?) = (title: "Dog", subtitle: nil)
    
    private var titleList: [String] = ["Orkun", "Onur", "Nazmi", "Kapak"]
    private var name: String?
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureContents()
        addSubViews()
        
        
        print("name: \(titleList[safe: 5] ?? "nil")")
        print("title: \(systemTitles.title)")
        print("subtitle: \(systemTitles.subtitle ?? "subtitle is nil")")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //
    }
    
    // MARK: - Services
    private func fetchList() {
        print("DEBUG: fetchList()")
    }
    
}

// MARK: - UILayout
extension HomeViewController {
    
    private func addSubViews() {
        view.backgroundColor = .systemBackground
        addSafeAreView()
        addOrkunLabel()
        addMenuLeftBarButton()
        addSearchRightBarButton()
    }
    
    private func addSafeAreView() {
        let safeArea = UIView()
        safeArea.backgroundColor = .systemPink
        view.addSubview(safeArea)
        safeArea.fillSuperViewSafeArea()
    }
    
    private func addOrkunLabel() {
        view.addSubview(orkunLabel)
        // TODO: change to tinyconstraint
        orkunLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                          left: view.safeAreaLayoutGuide.leftAnchor,
                          paddingTop: 20, paddingLeft: 20)
        
        
        
    }
    
    private func addSearchRightBarButton() {
        let image = UIImage(systemName: "sidebar.right")
        let searchBarButton = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(searchButtonTapped))
        navigationItem.rightBarButtonItem = searchBarButton
    }
    
    private func addMenuLeftBarButton() {
        let image = UIImage(systemName: "house")
        let menuBarButton = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(menuButtonTapped))
        navigationItem.leftBarButtonItem = menuBarButton
    }
    
}

// MARK: - Configure
extension HomeViewController {
    
    private func configureContents() {
//        collectionView.dataSource = self
//        collectionView.delegate = self
    }
}

// MARK: - Actions
extension HomeViewController {
    
    @objc
    private func searchButtonTapped() {
        print("DEBUG: searchButtonTapped")
    }
    
    @objc
    private func menuButtonTapped() {
        print("DEBUG: menuButtonTapped")
    }
    
}

// MARK: - UIScrollViewDelegate
extension HomeViewController {
    
//    func collectionView(_ collectionView: UICollectionView,
//                        willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//
//    }
    
}

// MARK: - UICollectionViewDataSource
//extension HomeViewController: UICollectionViewDataSource {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        list.numberOfItems
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell: SearchItemCell = collectionView.dequeueReusableCell(for: indexPath)
//        let viewModel = viewModel.cellItem(for: indexPath)
//        cell.set(viewModel: viewModel)
//        return cell
//    }
//
//}

// MARK: - UICollectionViewDelegate
//extension HomeViewController: UICollectionViewDelegate {
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        viewModel.didSelectSearchItem(at: indexPath)
//    }
//}

// MARK: - UICollectionViewDelegateFlowLayout
//extension HomeViewController: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let collectionWidth = collectionView.frame.size.width - 40
//        let width = collectionWidth / 3
//        return CGSize(width: width, height: width)
//    }
//
//}

// MARK: - UISearchBarDelegate

//extension HomeViewController: UISearchBarDelegate {
//
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        viewModel.searchBarCancelButtonTapped()
//    }
//
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        viewModel.fetchDataWithSearch(searchBar.text)
//    }
//
//}
