//
//  YWKGAgamePlanDateTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YWKGAgamePlanModel;
@class YWKGAgamePlanDateTableViewCell;
typedef void(^YWKGAgamePlanDateBlock)(YWKGAgamePlanDateTableViewCell *cell);
@interface YWKGAgamePlanDateTableViewCell : UITableViewCell
@property(nonatomic, strong)YWKGAgamePlanModel *model;
@property (nonatomic, copy)YWKGAgamePlanDateBlock YWKGAgamePlanDateB;
@end

NS_ASSUME_NONNULL_END
