//
//  GARecordTableViewCell.h
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAScorecardModel;
@class GARecordTableViewCell;
typedef void(^GARecordDeleteBlock)(GARecordTableViewCell *cell);
@interface GARecordTableViewCell : UITableViewCell
@property(nonatomic, strong)GARecordDeleteBlock GARecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)GAScorecardModel *GAModel;//数据模型
@end

NS_ASSUME_NONNULL_END
