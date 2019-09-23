//
//  GHAllClockLogsViewCellTableViewCell.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GHGuideClockInformationModel;
@interface GHAllClockLogsViewCellTableViewCell : UITableViewCell
@property(nonatomic, strong)GHGuideClockInformationModel *model;
@end

NS_ASSUME_NONNULL_END
