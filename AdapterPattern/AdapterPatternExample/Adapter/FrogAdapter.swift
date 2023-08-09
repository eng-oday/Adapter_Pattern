//
//  Adapter.swift
//  AdapterPattern
//
//  Created by 3rabApp-oday on 09/08/2023.
//

import Foundation


class FrogAdapter:JumpingProtocol{
    
    var frogAdaptee:FrogAdaptee
    
    init(frogeAdaptee: FrogAdaptee) {
        self.frogAdaptee = frogeAdaptee
    }
    
    func Jump() {
        frogAdaptee.leap()
    }
}
