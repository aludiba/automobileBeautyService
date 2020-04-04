//
//  KALoginTableViewCell.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class KABaseViewController;
@interface KALoginTableViewCell : UITableViewCell
@property(nonatomic, strong)KABaseViewController *KASuperVC;
@end

NS_ASSUME_NONNULL_END
