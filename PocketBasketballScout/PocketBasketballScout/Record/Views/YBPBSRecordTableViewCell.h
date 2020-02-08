//
//  YBPBSRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YBPBSScorecardModel;
@class YBPBSRecordTableViewCell;
typedef void(^YBPBSRecordDeleteBlock)(YBPBSRecordTableViewCell *cell);
@interface YBPBSRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)YBPBSRecordDeleteBlock YBPBSRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)YBPBSScorecardModel *YBPBSModel;//数据模型
@end

NS_ASSUME_NONNULL_END
