//
//  CDSetTableViewCell.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CDSetViewModel;
@interface CDSetTableViewCell : UITableViewCell
@property(nonatomic, strong)CDSetViewModel *model;

@end

NS_ASSUME_NONNULL_END
