//
//  MPOtherToolBarView.h
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MPOtherToolBarDelegate<NSObject>

@optional

-(void)MPselectToolOperation:(NSInteger)index;

@end

@interface MPOtherToolBarView : UIView

@end

NS_ASSUME_NONNULL_END
