//
//  ABSetTableViewCell.h
//  AroundTheDB
//
//  Created by bykj on 2019/8/24.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ABSetModel;
@interface ABSetTableViewCell : UITableViewCell
@property(nonatomic, strong)ABSetModel *model;
@end

NS_ASSUME_NONNULL_END
