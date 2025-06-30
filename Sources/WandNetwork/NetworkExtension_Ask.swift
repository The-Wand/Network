//
//  File.swift
//  WandFoundation
//
//  Created by al on 23/6/25.
//

import Network
import Wand

extension NWPath: AskingNil {
    
    @inlinable
    public
    static
    func ask<C, T>(with context: C, ask: Wand.Ask<T>) -> Wand.Core {
        
        let wand = Wand.Core.to(context)

        //Save ask
        guard wand.append(ask: ask, check: true) else {
            return wand
        }

        //Request for a first time

        //Prepare context
        let source: NWPathMonitor = wand.get()
        let queue:  DispatchQueue = wand.get() ?? .main

        //Set the cleaner
        wand.setCleaner(for: ask) {
            source.cancel()
        }

        //Make request
        source.pathUpdateHandler = { [weak wand] path in
            wand?.add(path)
        }
        
        source.start(queue: queue)
        
        return wand

    }
    
}
