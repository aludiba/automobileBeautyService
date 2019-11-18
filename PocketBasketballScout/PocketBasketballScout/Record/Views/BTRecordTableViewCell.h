//
//  BTRecordTableViewCell.h
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BTScorecardModel;
@class BTRecordTableViewCell;
typedef void(^BTRecordDeleteBlock)(BTRecordTableViewCell *cell);
@interface BTRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)BTRecordDeleteBlock BTRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)BTScorecardModel *BTModel;//数据模型
@end

NS_ASSUME_NONNULL_END
