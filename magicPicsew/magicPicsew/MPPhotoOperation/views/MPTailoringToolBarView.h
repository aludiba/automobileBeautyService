//
//  MPTailoringToolBarView.h
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM (NSUInteger, MPTailoringType){
    MPTailoringTypeAdjust ,//调整
    MPTailoringTypeVerticalStitching,//竖向拼接
    MPTailoringTypeTransverseSplicing,//横向拼接
};

@protocol MPTailoringToolBarDelegate<NSObject>

@optional

-(void)MPselectTailoringOperation:(NSInteger)index;

@end

@interface MPTailoringToolBarView : UIView

@property (nonatomic, assign) MPTailoringType MPcurrentType;//当前是何种裁剪类型

@end

NS_ASSUME_NONNULL_END
