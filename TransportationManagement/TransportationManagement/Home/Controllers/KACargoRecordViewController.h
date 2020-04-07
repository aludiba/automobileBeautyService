//
//  KACargoRecordViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface KACargoRecordViewController : KABaseViewController
@property(nonatomic, strong)UITableView *KAmainTable;//列表
@property(nonatomic, assign)KACargoType type;
@end

NS_ASSUME_NONNULL_END
