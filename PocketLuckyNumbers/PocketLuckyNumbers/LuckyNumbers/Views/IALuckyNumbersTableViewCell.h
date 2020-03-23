//
//  IALuckyNumbersTableViewCell.h
//  PocketLuckyNumbers
//
//  Created by 褚红彪 on 2019/12/29.
//  Copyright © 2019 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class IALuckyNumbersTableViewCell;
@class IALuckyNumbersModel;
typedef void(^IALuckyNumbersBlock)(IALuckyNumbersTableViewCell *cell);
@interface IALuckyNumbersTableViewCell : UITableViewCell
@property(nonatomic, assign)int IALuckyNumber;
@property(nonatomic, strong)IALuckyNumbersModel *model;
@property(nonatomic, strong)IALuckyNumbersBlock IALuckyNumbersB;
@end

NS_ASSUME_NONNULL_END
