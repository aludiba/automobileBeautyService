//
//  PLNRecordTableViewCell.h
//  PocketLuckyNumbers
//
//  Created by bykj on 2020/1/3.
//  Copyright © 2020 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PLNLuckyNumbersModel;
@class PLNRecordTableViewCell;
typedef void(^PLNRecordDeleteBlock)(PLNRecordTableViewCell *cell);
@interface PLNRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)PLNRecordDeleteBlock PLNRecordDeleteB;//删除本条数据操作
@property(nonatomic, strong)PLNLuckyNumbersModel *PLNModel;//数据模型
@end

NS_ASSUME_NONNULL_END
