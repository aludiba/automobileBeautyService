//
//  GAVolleyballRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAVolleyballScorecardModel;
@class GAVolleyballRecordTableViewCell;
typedef void(^GARecordDeleteBlock)(GAVolleyballRecordTableViewCell *cell);
@interface GAVolleyballRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)GARecordDeleteBlock GARecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)GAVolleyballScorecardModel *GAModel;//数据模型
@end

NS_ASSUME_NONNULL_END
