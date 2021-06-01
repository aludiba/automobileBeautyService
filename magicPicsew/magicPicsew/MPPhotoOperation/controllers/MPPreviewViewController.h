//
//  MPPreviewViewController.h
//  magicPicsew
//
//  Created by 123 on 2021/6/1.
//

#import "MPBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MPPreviewViewController : MPBaseViewController

@property (nonatomic, strong)UIImage *MPcompositeImage;//拼接好的图片

@property (nonatomic, assign) MPPhotoOperationType MPCurrentType;//当前照片操作类型

@end

NS_ASSUME_NONNULL_END
