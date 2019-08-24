//
//  ABSetModel.h
//  AroundTheDB
//
//  Created by bykj on 2019/8/24.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, ABSetCellType) {
    ABSetCellTypeDefault = 0,
    ABSetCellTypeContent = 1,
    ABSetCellTypeLoginOut = 2,
    ABSetCellTypeLine = 3
};
@interface ABSetModel : NSObject
@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *content;
@property(nonatomic, assign)ABSetCellType type;
@end

NS_ASSUME_NONNULL_END
