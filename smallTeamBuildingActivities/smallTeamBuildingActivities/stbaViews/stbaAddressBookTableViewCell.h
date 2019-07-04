//
//  stbaAddressBookTableViewCell.h
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class stbaAddressBookModel;
@interface stbaAddressBookTableViewCell : UITableViewCell
@property(nonatomic, strong)stbaAddressBookModel *model;
@end

NS_ASSUME_NONNULL_END
