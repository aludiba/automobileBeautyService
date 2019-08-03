//
//  SDShowDiaryTableViewCell.h
//  Simple Diary
//
//  Created by 褚红彪 on 2019/8/3.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SDWriteDiaryModel;
@interface SDShowDiaryTableViewCell : UITableViewCell
@property(nonatomic, strong)SDWriteDiaryModel *model;
@end

NS_ASSUME_NONNULL_END
