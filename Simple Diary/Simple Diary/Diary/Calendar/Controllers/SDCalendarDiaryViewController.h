//
//  SDCalendarDiaryViewController.h
//  Simple Diary
//
//  Created by 褚红彪 on 2019/8/10.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDCalendarDiaryViewController : SDBaseViewController
@property(nonatomic, strong)NSDate *date;
@property(nonatomic, strong)NSString *currentDateString;
@end

NS_ASSUME_NONNULL_END
