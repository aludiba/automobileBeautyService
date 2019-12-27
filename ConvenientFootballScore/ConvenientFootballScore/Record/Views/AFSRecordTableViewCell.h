//
//  AFSRecordTableViewCell.h
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AFSScorecardModel;
@class AFSRecordTableViewCell;
typedef void(^AFSRecordDeleteBlock)(AFSRecordTableViewCell *cell);
@interface AFSRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)AFSRecordDeleteBlock AFSRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)AFSScorecardModel *AFSModel;//数据模型
@end

NS_ASSUME_NONNULL_END
