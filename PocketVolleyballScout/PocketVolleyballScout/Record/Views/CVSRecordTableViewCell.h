//
//  CVSRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CVSScorecardModel;
@class CVSRecordTableViewCell;
typedef void(^CVSRecordDeleteBlock)(CVSRecordTableViewCell *cell);
@interface CVSRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)CVSRecordDeleteBlock CVSRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)CVSScorecardModel *CVSModel;//数据模型
@end

NS_ASSUME_NONNULL_END
