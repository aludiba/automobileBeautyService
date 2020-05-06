//
//  BCWardrobeModel.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BCWardrobeModel : NSObject
@property(nonatomic, copy)NSString *BCobjectId;
@property(nonatomic, copy)NSString *BCtypes;//类型
@property(nonatomic, copy)NSString *BCnumber;//尺码号
@property(nonatomic, copy)NSString *BCstorage;//储存位置
@property(nonatomic, copy)NSString *BCpurchasetime;//购买时间
@end

NS_ASSUME_NONNULL_END
