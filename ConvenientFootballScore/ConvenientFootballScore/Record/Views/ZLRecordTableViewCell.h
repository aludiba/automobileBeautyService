//
//  ZLRecordTableViewCell.h
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ZLScorecardModel;
@class ZLRecordTableViewCell;
typedef void(^ZLRecordDeleteBlock)(ZLRecordTableViewCell *cell);
@interface ZLRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)ZLRecordDeleteBlock ZLRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)ZLScorecardModel *ZLModel;//数据模型
@end

NS_ASSUME_NONNULL_END
