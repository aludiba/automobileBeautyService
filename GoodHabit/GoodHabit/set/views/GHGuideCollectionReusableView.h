//
//  GHGuideCollectionReusableView.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GHGuideCollectionReusableView : UICollectionReusableView
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)NSString *titleString;
@end

NS_ASSUME_NONNULL_END
