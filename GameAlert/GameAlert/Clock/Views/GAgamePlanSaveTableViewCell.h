//
//  GAgamePlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAgamePlanSaveTableViewCell;
typedef void(^GAgamePlanSaveBlock)(GAgamePlanSaveTableViewCell *cell);
@interface GAgamePlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)GAgamePlanSaveBlock GAgamePlanSaveB;
@end

NS_ASSUME_NONNULL_END
