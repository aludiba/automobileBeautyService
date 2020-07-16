//
//  CDAllClockLogsViewCellTableViewCell.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CDGuideClockInformationModel;
@interface CDAllClockLogsViewCellTableViewCell : UITableViewCell
@property(nonatomic, strong)CDGuideClockInformationModel *model;
@end

NS_ASSUME_NONNULL_END
