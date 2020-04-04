//
//  KACargoRecordTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class KACargoAddViewModel;
@interface KACargoRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)KACargoAddViewModel *KAviewModel;
@end

NS_ASSUME_NONNULL_END
