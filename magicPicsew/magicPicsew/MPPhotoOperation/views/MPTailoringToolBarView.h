//
//  MPTailoringToolBarView.h
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import <UIKit/UIKit.h>
#import "MPPhotoOperationViewController.h"
NS_ASSUME_NONNULL_BEGIN

@protocol MPTailoringToolBarDelegate<NSObject>

@optional

-(void)MPselectTailoringOperation:(NSInteger)index;

@end

@interface MPTailoringToolBarView : UIView

@property (nonatomic, assign) MPPhotoOperationType MPcurrentType;//当前是何种裁剪类型

@end

NS_ASSUME_NONNULL_END
