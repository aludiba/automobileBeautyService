//
//  PHGuideModel.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PHGuideClockInformationModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface PHGuideModel : NSObject
@property(nonatomic, assign)NSUInteger PHperiodCode;
@property(nonatomic, copy)NSString *PHperiodTimeString;
@property(nonatomic, copy)NSString *PHimageContent;
@property(nonatomic, assign)NSUInteger PHcontentCode;
@property(nonatomic, copy)NSString *content;
@property(nonatomic, assign)Boolean PHisSelect;

@property(nonatomic, strong)NSArray<PHGuideClockInformationModel *> *PHpunchArray;//打卡信息数组
@property(nonatomic, strong)NSDate *PHlastClockDate;
@property(nonatomic, assign)NSUInteger PHclockContinuouslyNumber;//连续打卡时间
@end

NS_ASSUME_NONNULL_END
