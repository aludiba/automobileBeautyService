//
//  LBLoginTextCell.h
//  MacroSports
//
//  Created by user on 2020/7/7.
//  Copyright © 2020 macro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, LBLoginType) {
    LBLoginTypeAccount = 0,
    LBLoginTypePassword,
};
@class LBLoginModel;
@interface LBLoginTextCell : UITableViewCell
@property(nonatomic, assign)LBLoginType LBlogintype;//当前类型
@property(nonatomic, strong)LBLoginModel *LBModel;
@end

NS_ASSUME_NONNULL_END
