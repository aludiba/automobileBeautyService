//
//  AHsodePlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AHsodePlanModel;
@class AHsodePlanDateTableViewCell;
typedef void(^AHsodePlanDateBlock)(AHsodePlanDateTableViewCell *cell);
@interface AHsodePlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)AHsodePlanModel *AHmodel;
@property (nonatomic, copy)AHsodePlanDateBlock AHsodePlanDateB;
@end

NS_ASSUME_NONNULL_END
