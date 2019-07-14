//
//  stbaHomeTableViewCell.h
//  smallTeamBuildingActivities
//
//  Created by 褚红彪 on 2019/7/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class stbaAddActivitieModel;
@class stbaHomeViewController;
@interface stbaHomeTableViewCell : UITableViewCell
@property(nonatomic, strong)stbaAddActivitieModel *model;
@property(nonatomic, strong)stbaHomeViewController *superVC;
@end

NS_ASSUME_NONNULL_END
