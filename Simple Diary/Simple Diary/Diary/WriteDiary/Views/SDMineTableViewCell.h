//
//  SDMineTableViewCell.h
//  Simple Diary
//
//  Created by 褚红彪 on 2019/8/8.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SDMineModel;
@interface SDMineTableViewCell : UITableViewCell
@property(nonatomic, strong)SDMineModel *model;
@end

NS_ASSUME_NONNULL_END
