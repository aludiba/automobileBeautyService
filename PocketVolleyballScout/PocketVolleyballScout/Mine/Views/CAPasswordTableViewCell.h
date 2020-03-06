//
//  CAPasswordTableViewCell.h
//  PocketVolleyballScout
//
//  Created by bykj on 2020/3/4.
//  Copyright © 2020 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class CAPasswordChangeViewController;
@interface CAPasswordTableViewCell : UITableViewCell
@property(nonatomic, strong)CAPasswordChangeViewController *CASuperVC;
@property(nonatomic, copy)NSString *CAuserName;
@end

NS_ASSUME_NONNULL_END
