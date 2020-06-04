//
//  FBDailyModel.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBDailyModel : NSObject
@property(nonatomic, copy)NSString *FBobjectId;
@property(nonatomic, strong)NSDate *FBDate;
@property(nonatomic, copy)NSString *FBContent;
@end

NS_ASSUME_NONNULL_END
