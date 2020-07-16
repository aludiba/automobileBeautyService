//
//  CDGuideModel.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CDGuideClockInformationModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CDGuideModel : NSObject
@property(nonatomic, assign)NSUInteger CDperiodCode;
@property(nonatomic, copy)NSString *CDperiodTimeString;
@property(nonatomic, copy)NSString *CDimageContent;
@property(nonatomic, assign)NSUInteger CDcontentCode;
@property(nonatomic, copy)NSString *content;
@property(nonatomic, assign)Boolean CDisSelect;

@property(nonatomic, strong)NSArray<CDGuideClockInformationModel *> *CDpunchArray;//打卡信息数组
@property(nonatomic, strong)NSDate *CDlastClockDate;
@property(nonatomic, assign)NSUInteger CDclockContinuouslyNumber;//连续打卡时间
@end

NS_ASSUME_NONNULL_END
