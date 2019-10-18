//
//  SOSetTableViewCell.h
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SOSetViewModel;
@interface SOSetTableViewCell : UITableViewCell
@property(nonatomic, strong)SOSetViewModel *model;
@end

NS_ASSUME_NONNULL_END
