//
//  PHAllClockLogsViewCellTableViewCell.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PHGuideClockInformationModel;
@interface PHAllClockLogsViewCellTableViewCell : UITableViewCell
@property(nonatomic, strong)PHGuideClockInformationModel *model;
@end

NS_ASSUME_NONNULL_END
