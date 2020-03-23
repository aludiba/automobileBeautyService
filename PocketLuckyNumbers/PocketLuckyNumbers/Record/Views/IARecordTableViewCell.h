//
//  IARecordTableViewCell.h
//  PocketLuckyNumbers
//
//  Created by bykj on 2020/1/3.
//  Copyright © 2020 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class IALuckyNumbersModel;
@class IARecordTableViewCell;
typedef void(^IARecordDeleteBlock)(IARecordTableViewCell *cell);
@interface IARecordTableViewCell : UITableViewCell
@property(nonatomic, strong)IARecordDeleteBlock IARecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)IALuckyNumbersModel *IAModel;//数据模型
@end

NS_ASSUME_NONNULL_END
