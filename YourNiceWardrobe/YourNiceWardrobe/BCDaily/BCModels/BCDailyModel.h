//
//  BCDailyModel.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BCDailyModel : NSObject
@property(nonatomic, copy)NSString *BCobjectId;
@property(nonatomic, strong)NSDate *BCDate;
@property(nonatomic, copy)NSString *BCContent;
@end

NS_ASSUME_NONNULL_END
