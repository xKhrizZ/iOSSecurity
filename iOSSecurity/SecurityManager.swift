//
//  SecurityManager.swift
//  iOSSecurity
//
//  Created by Christian Rojas on 19/02/22.
//

import Foundation
import CryptoSwift

public struct SecurityManager {
    
    public static func base64Encrypt(key: String, text: String) -> String{
        if let base64cipher = try? Rabbit(key: key),
            let base64 = try? text.encryptToBase64(cipher: base64cipher) {
            return base64
        }
        return ""
    }
    
    public static func base64Decrypt(key: String, base64: String) -> String{
        if let base64cipher = try? Rabbit(key: key),
           let decrypted = try? base64.decryptBase64ToString(cipher: base64cipher) {
            return decrypted
        }
        return ""
    }
}
