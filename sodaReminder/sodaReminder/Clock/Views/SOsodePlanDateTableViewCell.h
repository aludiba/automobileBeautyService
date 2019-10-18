//
//  SOsodePlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SOsodePlanModel;
@class SOsodePlanDateTableViewCell;
typedef void(^SOsodePlanDateBlock)(SOsodePlanDateTableViewCell *cell);
@interface SOsodePlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)SOsodePlanModel *model;
@property (nonatomic, copy)SOsodePlanDateBlock SOsodePlanDateB;
@end

NS_ASSUME_NONNULL_END
