//
//  AFgamePlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AFgamePlanModel;
@class AFgamePlanDateTableViewCell;
typedef void(^AFgamePlanDateBlock)(AFgamePlanDateTableViewCell *cell);
@interface AFgamePlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)AFgamePlanModel *AFmodel;
@property (nonatomic, copy)AFgamePlanDateBlock AFgamePlanDateB;
@end

NS_ASSUME_NONNULL_END
