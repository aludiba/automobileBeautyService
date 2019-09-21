//
//  GHGuideClockInformationModel.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GHGuideClockInformationModel : NSObject
@property(nonatomic, strong)NSDate *clockDate;
@property(nonatomic, strong)NSString *clockLogContent;
@end

NS_ASSUME_NONNULL_END
