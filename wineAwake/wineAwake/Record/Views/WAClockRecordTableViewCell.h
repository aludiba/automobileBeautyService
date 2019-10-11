//
//  WAClockRecordTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WAClockRecordModel;
@interface WAClockRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)WAClockRecordModel *model;
@end

NS_ASSUME_NONNULL_END
