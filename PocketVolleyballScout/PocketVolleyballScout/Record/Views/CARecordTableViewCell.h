//
//  CARecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CAScorecardModel;
@class CARecordTableViewCell;
typedef void(^CARecordDeleteBlock)(CARecordTableViewCell *cell);
@interface CARecordTableViewCell : UITableViewCell
@property(nonatomic, strong)CARecordDeleteBlock CARecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)CAScorecardModel *CAModel;//数据模型
@end

NS_ASSUME_NONNULL_END
