//
//  GAgamePlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAgamePlanModel;
@class GAgamePlanDateTableViewCell;
typedef void(^GAgamePlanDateBlock)(GAgamePlanDateTableViewCell *cell);
@interface GAgamePlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)GAgamePlanModel *model;
@property (nonatomic, copy)GAgamePlanDateBlock GAgamePlanDateB;
@end

NS_ASSUME_NONNULL_END
