////
////  Reachabillity.swift
////  SkyForecast
////
////  Created by Hellen Soloviy on 3/18/19.
////  Copyright © 2019 HellySolovii. All rights reserved.
////
//
//import Foundation
//import Reachability
//
//@objc public class ReachabilityManager: NSObject {
//    override fileprivate init(){}
//
//    var isReachable = true {
//        didSet {
//            if oldValue != isReachable, !oldValue {
//                LoadingService.shared.loadData()
//            }
//        }
//    }
//    var reachability : Reachability?
//
//    var isCurrentlyReachable: Bool {
//        if let reachability = self.reachability {
//            return reachability.connection != .none
//        } else {
//            return false
//        }
//    }
//    
//    @objc static let shared = ReachabilityManager()
//
//    @objc func startTracking(){
//        reachability = Reachability()
//        do { try reachability?.startNotifier() } catch {
//            print("Unable to start notifier")
//        }
//
//        NotificationCenter.default.addObserver(self, selector: #selector(self.reachabilityChanged),name: Notification.Name.reachabilityChanged,object: reachability)
//    }
//
//    func updateStatus(){
//        guard let reachability = self.reachability else { return }
//        updateStatus(reachability: reachability)
//    }
//
//    func updateStatus(reachability : Reachability){
//        if reachability.connection != .none {
//            isReachable = true
//        } else {
//            isReachable = false
//            print("Network not reachable")
//        }
//    }
//
//    @objc func reachabilityChanged(note: NSNotification) {
//        let reachability = note.object as! Reachability
//        updateStatus(reachability: reachability)
//
//    }
//
//    deinit {
//        NotificationCenter.default.removeObserver(self)
//    }
//}
