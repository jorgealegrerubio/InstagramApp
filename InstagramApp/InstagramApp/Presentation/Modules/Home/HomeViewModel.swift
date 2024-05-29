//
//  HomeModel.swift
//  InstagramApp
//
//  Created by Jorge Alegre Rubio on 26/5/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreInternalWrapper
import FirebaseStorage

struct Post: Identifiable {
    let id: UUID
    let imageURL: String
    let userId: String
}

@Observable
class HomeViewModel: ObservableObject {
    var posts = [Post]()
    
    func getPosts() {
        let db = Firestore.firestore()
        let postsRef = db.collection("posts")
        postsRef.getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                for document in querySnapshot!.documents {
                    let data = document.data()
                    let id = document.documentID
                    let imageURL = data["urlImage"] as? String ?? ""
                    let userId = data["uuid"] as? String ?? ""
                    self.posts.append(Post(id: UUID(uuidString: id) ?? UUID(), imageURL: imageURL, userId: userId))
                }
            }
        }
        
        Task {
           await storage()
        }
       
    }
    
    func storage() async {
        guard let data = UIImage(named: "dog")?.jpegData(compressionQuality: 1) else { return }
        
        let storage = Storage.storage().reference()

        let path = "\(UUID().uuidString).jpeg"
        let ref = storage.child(path)
        Date()
        do {
            try await ref.putDataAsync(data)
            ref.downloadURL { url, error in
                print(url)
            }
        } catch {
            
        }
    }
}
