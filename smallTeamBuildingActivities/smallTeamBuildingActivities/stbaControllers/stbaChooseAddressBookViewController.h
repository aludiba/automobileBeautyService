//
//  stbaSearchAddressBookViewController.h
//  smallTeamBuildingActivities
//
//  Created by 褚红彪 on 2019/7/10.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class stbaChooseAddressBookViewController;
@interface stbaChooseAddressBookViewController : stbaBaseViewController
@property (nonatomic, copy, nullable) void(^finishSelectBlock)(stbaChooseAddressBookViewController *selectVC);
@property(nonatomic, strong)NSMutableArray *selectArray;
@end

NS_ASSUME_NONNULL_END
