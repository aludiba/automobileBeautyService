//
//  SDMineModel.h
//  Simple Diary
//
//  Created by 褚红彪 on 2019/8/8.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, SDMineCellType) {
    SDMineCellTypeDefault = 0,
    SDMineCellTypeContent = 1,
    SDMineCellTypeLoginOut = 2,
    SDMineCellTypeLine = 3
};
@interface SDMineModel : NSObject
@property(nonatomic, copy)NSString *title;
@property(nonatomic, assign)SDMineCellType type;
@end

NS_ASSUME_NONNULL_END
