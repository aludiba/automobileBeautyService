//
//  AHsodePlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AHsodePlanSaveTableViewCell;
typedef void(^AHsodePlanSaveBlock)(AHsodePlanSaveTableViewCell *cell);
@interface AHsodePlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)AHsodePlanSaveBlock AHsodePlanSaveB;
@end

NS_ASSUME_NONNULL_END
