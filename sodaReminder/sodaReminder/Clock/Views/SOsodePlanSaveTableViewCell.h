//
//  SOsodePlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SOsodePlanSaveTableViewCell;
typedef void(^SOsodePlanSaveBlock)(SOsodePlanSaveTableViewCell *cell);
@interface SOsodePlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)SOsodePlanSaveBlock SOsodePlanSaveB;
@end

NS_ASSUME_NONNULL_END
