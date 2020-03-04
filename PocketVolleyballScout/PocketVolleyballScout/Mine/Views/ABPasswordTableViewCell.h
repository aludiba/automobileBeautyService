//
//  ABPasswordTableViewCell.h
//  PocketVolleyballScout
//
//  Created by bykj on 2020/3/4.
//  Copyright © 2020 com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ABPasswordChangeViewController;
@interface ABPasswordTableViewCell : UITableViewCell
@property(nonatomic, strong)ABPasswordChangeViewController *ABSuperVC;
@property(nonatomic, copy)NSString *ABuserName;
@end

NS_ASSUME_NONNULL_END
