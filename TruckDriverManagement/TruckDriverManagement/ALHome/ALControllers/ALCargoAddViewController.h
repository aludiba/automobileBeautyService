//
//  ALCargoAddViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class ALCargoRecordViewController;
@interface ALCargoAddViewController : ALBaseViewController
@property(nonatomic, strong)ALCargoRecordViewController *ALsuperVC;
@property(nonatomic, assign)ALCargoType type;
@end

NS_ASSUME_NONNULL_END
