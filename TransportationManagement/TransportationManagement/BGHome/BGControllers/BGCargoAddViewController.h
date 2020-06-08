//
//  BGCargoAddViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class BGCargoRecordViewController;
@interface BGCargoAddViewController : BGBaseViewController
@property(nonatomic, strong)BGCargoRecordViewController *BGsuperVC;
@property(nonatomic, assign)BGCargoType type;
@end

NS_ASSUME_NONNULL_END
