import Foundation

final class OAuth2TokenStorage {
    
    let bearerToken = "Bearer Token"
    
    var token: String? {
        get {
            return UserDefaults.standard.string(forKey: bearerToken)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: bearerToken)
        }
    }
}
  
