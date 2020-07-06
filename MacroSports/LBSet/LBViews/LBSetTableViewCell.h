//
//  LBSetTableViewCell.h
//  MacroSports
//
//  Created by 褚红彪 on 2020/7/6.
//  Copyright © 2020 macro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class LBSetViewModel;
@interface LBSetTableViewCell : UITableViewCell
@property(nonatomic, strong)LBSetViewModel *LBsetviewmodel;
@end

NS_ASSUME_NONNULL_END
