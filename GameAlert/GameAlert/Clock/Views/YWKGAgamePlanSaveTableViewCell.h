//
//  YWKGAgamePlanSaveTableViewCell.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YWKGAgamePlanSaveTableViewCell;
typedef void(^YWKGAgamePlanSaveBlock)(YWKGAgamePlanSaveTableViewCell *cell);
@interface YWKGAgamePlanSaveTableViewCell : UITableViewCell
@property (nonatomic, copy)YWKGAgamePlanSaveBlock YWKGAgamePlanSaveB;
@end

NS_ASSUME_NONNULL_END
