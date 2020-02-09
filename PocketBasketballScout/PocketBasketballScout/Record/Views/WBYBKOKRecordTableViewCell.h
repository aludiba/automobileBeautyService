//
//  WBYBKOKRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WBYBKOKScorecardModel;
@class WBYBKOKRecordTableViewCell;
typedef void(^WBYBKOKRecordDeleteBlock)(WBYBKOKRecordTableViewCell *cell);
@interface WBYBKOKRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)WBYBKOKRecordDeleteBlock WBYBKOKRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)WBYBKOKScorecardModel *WBYBKOKModel;//数据模型
@end

NS_ASSUME_NONNULL_END
