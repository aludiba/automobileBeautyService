//
//  AFgamePlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AFgamePlanSaveTableViewCell;
typedef void(^AFgamePlanSaveBlock)(AFgamePlanSaveTableViewCell *cell);
@interface AFgamePlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)AFgamePlanSaveBlock AFgamePlanSaveB;
@end

NS_ASSUME_NONNULL_END
