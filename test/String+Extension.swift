//
//  String+Extension.swift
//  test
//
//  Created by jackrex on 2019/4/4.
//  Copyright © 2019 Thanos. All rights reserved.
//

import Foundation

extension String {
    
    func squareFormat() -> String {
        return self + Common.squareFormat
    }
    
    func smallAvatarFormat() -> String {
        return self + Common.smallAvatarFormat
    }
    
    func largeAvatarFormat() -> String {
        return self + Common.largeAvatarFormat
    }
    
    func timelineSinglePhotoFormat() -> String {
        return self + Common.timelineSinglePhotoFormat
    }
    
    func timelineSplitPhotoFormat() -> String {
        return self + Common.timelineSplitPhotoFormat
    }
    
}
