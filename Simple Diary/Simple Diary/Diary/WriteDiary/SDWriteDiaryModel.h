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
@property(nonatomic, strong)NSString *objectId;
@property(nonatomic, strong)NSString *fontSize;
@property(nonatomic, strong)NSDictionary *fontRGB;
@property(nonatomic, strong)NSDictionary *themeRGB;
@property(nonatomic, strong)NSString *location;
@property(nonatomic, strong)NSString *weather;
@property(nonatomic, strong)NSString *content;
@property(nonatomic, strong)NSString *date;
@property(nonatomic, strong)NSString *weekDay;
@property(nonatomic, strong)NSArray *imageUrls;
@property(nonatomic, strong)NSDate *createdAt;
@property(nonatomic, strong)NSDate *updatedAt;
@end

NS_ASSUME_NONNULL_END
