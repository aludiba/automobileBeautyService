//
//  SDWriteDiaryModel.h
//  Simple Diary
//
//  Created by 褚红彪 on 2019/7/27.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SDWriteDiaryModel : NSObject
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, copy)NSString *fontSize;
@property(nonatomic, copy)NSDictionary *fontRGB;
@property(nonatomic, copy)NSDictionary *themeRGB;
@property(nonatomic, copy)NSString *location;
@property(nonatomic, copy)NSString *weather;
@property(nonatomic, copy)NSString *content;
@property(nonatomic, copy)NSString *date;
@property(nonatomic, copy)NSString *weekDay;
@property(nonatomic, copy)NSArray *imageUrls;
@property(nonatomic, strong)NSDate *createdAt;
@property(nonatomic, strong)NSDate *updatedAt;
@end

NS_ASSUME_NONNULL_END
