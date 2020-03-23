//
//  AJgamePlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AJgamePlanModel;
@class AJgamePlanDateTableViewCell;
typedef void(^AJgamePlanDateBlock)(AJgamePlanDateTableViewCell *cell);
@interface AJgamePlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)AJgamePlanModel *AJmodel;
@property (nonatomic, copy)AJgamePlanDateBlock AJgamePlanDateB;
@end

NS_ASSUME_NONNULL_END
