//
//  MPPhotoOperationViewController.h
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import "MPBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM (NSUInteger, MPPhotoOperationType){
    MPPhotoOperationTypeAdjust,//调整
    MPPhotoOperationTypeVerticalStitching,//竖向拼接
    MPPhotoOperationTypeTransverseSplicing//横向拼接
};
@interface MPPhotoOperationViewController : MPBaseViewController

@property (nonatomic, assign) MPPhotoOperationType MPCurrentType;//当前照片操作类型

@end

NS_ASSUME_NONNULL_END
