//
//  CBSRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CBSScorecardModel;
@class CBSRecordTableViewCell;
typedef void(^CBSRecordDeleteBlock)(CBSRecordTableViewCell *cell);
@interface CBSRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)CBSRecordDeleteBlock CBSRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)CBSScorecardModel *CBSModel;//数据模型
@end

NS_ASSUME_NONNULL_END
