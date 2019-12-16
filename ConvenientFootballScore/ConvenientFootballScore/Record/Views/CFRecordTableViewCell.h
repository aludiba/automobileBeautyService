//
//  CFRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CFScorecardModel;
@class CFRecordTableViewCell;
typedef void(^CFRecordDeleteBlock)(CFRecordTableViewCell *cell);
@interface CFRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)CFRecordDeleteBlock CFRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)CFScorecardModel *CFModel;//数据模型
@end

NS_ASSUME_NONNULL_END
