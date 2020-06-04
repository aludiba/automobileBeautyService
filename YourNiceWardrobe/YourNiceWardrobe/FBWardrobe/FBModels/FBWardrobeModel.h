//
//  FBWardrobeModel.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBWardrobeModel : NSObject
@property(nonatomic, copy)NSString *FBobjectId;
@property(nonatomic, copy)NSString *FBtypes;//类型
@property(nonatomic, copy)NSString *FBnumber;//尺码号
@property(nonatomic, copy)NSString *FBstorage;//储存位置
@property(nonatomic, copy)NSString *FBpurchasetime;//购买时间
@end

NS_ASSUME_NONNULL_END
