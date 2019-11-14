//
//  KTRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class KTScorecardModel;
@class KTRecordTableViewCell;
typedef void(^KTRecordDeleteBlock)(KTRecordTableViewCell *cell);
@interface KTRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)KTRecordDeleteBlock KTRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)KTScorecardModel *KTModel;//数据模型
@end

NS_ASSUME_NONNULL_END
