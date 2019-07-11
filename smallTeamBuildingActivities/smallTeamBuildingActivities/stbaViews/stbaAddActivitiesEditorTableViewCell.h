//
//  stbaAddActivitiesEditorTableViewCell.h
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/11.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class stbaAddActivitiesEditorTableViewCell;
@class stbaAddActivitiesViewModel;
typedef void(^stbaEditorBlock)(stbaAddActivitiesEditorTableViewCell *cell);
@interface stbaAddActivitiesEditorTableViewCell : UITableViewCell
@property(nonatomic, strong)stbaEditorBlock editblock;
@property(nonatomic, copy)NSString *contentString;
@property(nonatomic, assign)CGFloat contentHeight;
@property(nonatomic, strong)stbaAddActivitiesViewModel *model;

@end

NS_ASSUME_NONNULL_END
