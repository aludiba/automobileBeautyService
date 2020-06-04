//
//  FBproblemFeedbackTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. FBl rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class FBproblemFeedbackTableViewCell;
@class FBDressUpAddModel;
typedef void(^contentEditBlock)(FBproblemFeedbackTableViewCell *cell);
@interface FBproblemFeedbackTableViewCell : UITableViewCell
@property(nonatomic, copy)contentEditBlock FBeditBlock;
@property(nonatomic, assign)CGFloat FBcontentHeight;
@property(nonatomic, strong)FBDressUpAddModel *FBViewModel;
@end

NS_ASSUME_NONNULL_END
