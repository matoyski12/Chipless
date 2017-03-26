//
//  MPCHandler.swift
//  Chippy
//
//  Created by Mike Metoyer  on 3/24/17.
//  Copyright © 2017 MAP Crew. All rights reserved.
//

import UIKit
import MultipeerConnectivity

class MPCHandler: NSObject, MCSessionDelegate {
    var peerID:MCPeerID!
    var session:MCSession!
    var browser:MCBrowserViewController!
    var advertiser:MCAdvertiserAssistant? = nil
    
    func setupPeerWithDisplayName (displayName:String){
        peerID = MCPeerID(displayName: displayName)
        
    
    }
    
    func setupSession() {
        session = MCSession(peer: peerID)
        session.delegate = self
        
        
        

    }
    
    func setupBrowser() {
        browser = MCBrowserViewController(serviceType: "my-game", session: session)
    
    }
    
    func advertiseSelf(advertise:Bool) {
        if advertise {
            advertiser = MCAdvertiserAssistant(serviceType: "my-game", discoveryInfo: nil, session: session)
            advertiser!.start()
        }else{
            advertiser!.stop()
            advertiser = nil
        }
        
        }
    
    func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        _ = ["peerID":peerID,"state":state.rawValue]
        DispatchQueue.main.async(execute: <#T##() -> Void#>); in
        NotificationCenter."default".post("MPC_DidChangeStateNotification", object_isClass(nil), _: _)}
        
    }
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        _ = ["data":data,"peerID":peerID]
        DispatchQueue.main.async(execute: <#T##() -> Void#>); in
        NotificationCenter."default".post("MPC_DidReceiveDataNotification", object_isClass(nil), _: _)}
            
            
        
}
    func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL, withError error: Error?) {
        
}
    func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
}

    func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
        
    }

    
    
