//
//  mag5sRecordTableViewCell.h
//  workshopManagement5s
//
//  Created by 褚红彪 on 2019/6/30.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class mag5sDataModel;
@class mag5sHomeViewController;
@interface mag5sRecordTableViewCell : UITableViewCell
@property(nonatomic, strong)mag5sDataModel *model;
@property(nonatomic, strong)mag5sHomeViewController *superVC;
@end

NS_ASSUME_NONNULL_END
