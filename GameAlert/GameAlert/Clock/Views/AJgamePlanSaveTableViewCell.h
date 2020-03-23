//
//  AJgamePlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AJgamePlanSaveTableViewCell;
typedef void(^AJgamePlanSaveBlock)(AJgamePlanSaveTableViewCell *cell);
@interface AJgamePlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)AJgamePlanSaveBlock AJgamePlanSaveB;
@end

NS_ASSUME_NONNULL_END
