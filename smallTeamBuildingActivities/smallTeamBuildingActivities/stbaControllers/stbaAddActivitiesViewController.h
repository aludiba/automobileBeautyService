//
//  stbaAddActivitiesViewController.h
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class stbaAddActivitieModel;
typedef NS_ENUM(NSInteger,stbaAddActivitiesViewControllerType){
    stbaAddActivitiesViewControllerTypeAdd,
    stbaAddActivitiesViewControllerTypeDetail,
    stbaAddActivitiesViewControllerTypeOther,
};
@interface stbaAddActivitiesViewController : stbaBaseViewController
@property(nonatomic, assign)stbaAddActivitiesViewControllerType currentType;
@property(nonatomic, strong)stbaAddActivitieModel *model;
@end

NS_ASSUME_NONNULL_END
