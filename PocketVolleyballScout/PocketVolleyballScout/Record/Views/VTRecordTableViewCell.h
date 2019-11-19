//
//  VTRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class VTScorecardModel;
@class VTRecordTableViewCell;
typedef void(^VTRecordDeleteBlock)(VTRecordTableViewCell *cell);
@interface VTRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)VTRecordDeleteBlock VTRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)VTScorecardModel *VTModel;//数据模型
@end

NS_ASSUME_NONNULL_END
