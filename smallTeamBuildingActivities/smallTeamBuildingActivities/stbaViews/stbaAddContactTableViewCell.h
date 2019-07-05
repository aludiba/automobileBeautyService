//
//  stbaAddContactTableViewCell.h
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/5.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class stbaAddContactTableViewCell;
@class stbaAddContactViewModel;
typedef void(^stbaAddContactEditorBlock)(stbaAddContactTableViewCell *cell);
@interface stbaAddContactTableViewCell : UITableViewCell
@property(nonatomic, strong)stbaAddContactEditorBlock editblock;
@property(nonatomic, copy)NSString *contentString;
@property(nonatomic, assign)CGFloat contentHeight;
@property(nonatomic, strong)stbaAddContactViewModel *model;
@end

NS_ASSUME_NONNULL_END
