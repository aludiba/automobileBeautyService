//
//  BCproblemFeedbackTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. BCl rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BCproblemFeedbackTableViewCell;
@class BCDressUpAddModel;
typedef void(^contentEditBlock)(BCproblemFeedbackTableViewCell *cell);
@interface BCproblemFeedbackTableViewCell : UITableViewCell
@property(nonatomic, copy)contentEditBlock BCeditBlock;
@property(nonatomic, assign)CGFloat BCcontentHeight;
@property(nonatomic, strong)BCDressUpAddModel *BCViewModel;
@end

NS_ASSUME_NONNULL_END
