//
//  stbaSearchAddressBookTableViewCell.h
//  smallTeamBuildingActivities
//
//  Created by 褚红彪 on 2019/7/10.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class stbaAddressBookModel;
@interface stbaSearchAddressBookTableViewCell : UITableViewCell
@property(nonatomic, strong)stbaAddressBookModel *model;
@end

NS_ASSUME_NONNULL_END
