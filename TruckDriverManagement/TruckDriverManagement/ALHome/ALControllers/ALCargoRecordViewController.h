//
//  ALCargoRecordViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ALCargoRecordViewController : ALBaseViewController
@property(nonatomic, strong)UITableView *ALmainTable;//列表
@property(nonatomic, assign)ALCargoType type;
@end

NS_ASSUME_NONNULL_END
