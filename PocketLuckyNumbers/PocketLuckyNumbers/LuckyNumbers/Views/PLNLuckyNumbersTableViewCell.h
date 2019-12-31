//
//  PLNLuckyNumbersTableViewCell.h
//  PocketLuckyNumbers
//
//  Created by 褚红彪 on 2019/12/29.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PLNLuckyNumbersTableViewCell;
@class PLNLuckyNumbersModel;
typedef void(^PLNLuckyNumbersBlock)(PLNLuckyNumbersTableViewCell *cell);
@interface PLNLuckyNumbersTableViewCell : UITableViewCell
@property(nonatomic, assign)int PLNLuckyNumber;
@property(nonatomic, strong)PLNLuckyNumbersModel *model;
@property(nonatomic, strong)PLNLuckyNumbersBlock PLNLuckyNumbersB;
@end

NS_ASSUME_NONNULL_END
