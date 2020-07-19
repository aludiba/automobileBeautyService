//
//  LBHomeHeaderView.h
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class LBHomeHeaderView;
typedef void(^homeHeaderActionBlock)(LBHomeHeaderView *header);
@interface LBHomeHeaderView : UITableViewHeaderFooterView
@property(nonatomic, assign)NSInteger LBIndex;
@property(nonatomic, copy)homeHeaderActionBlock LBHeaderActionBlock;
@end

NS_ASSUME_NONNULL_END
