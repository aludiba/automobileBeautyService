//
//  ALCargoRecordTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ALCargoAddViewModel;
@interface ALCargoRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)ALCargoAddViewModel *ALviewModel;
@end

NS_ASSUME_NONNULL_END
