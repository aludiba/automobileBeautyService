//
//  ADRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ADScorecardModel;
@class ADRecordTableViewCell;
typedef void(^ADRecordDeleteBlock)(ADRecordTableViewCell *cell);
@interface ADRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)ADRecordDeleteBlock ADRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)ADScorecardModel *ADModel;//数据模型
@end

NS_ASSUME_NONNULL_END
