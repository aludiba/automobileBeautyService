//
//  GHGuideModel.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GHGuideClockInformationModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface GHGuideModel : NSObject
@property(nonatomic, assign)NSUInteger periodCode;
@property(nonatomic, copy)NSString *periodTimeString;
@property(nonatomic, copy)NSString *imageContent;
@property(nonatomic, assign)NSUInteger contentCode;
@property(nonatomic, copy)NSString *content;
@property(nonatomic, assign)Boolean isSelect;

@property(nonatomic, strong)NSMutableArray<GHGuideClockInformationModel *> *punchArray;//打卡信息数组
@property(nonatomic, assign)NSUInteger clockContinuouslyNumber;//连续打卡时间
@end

NS_ASSUME_NONNULL_END
