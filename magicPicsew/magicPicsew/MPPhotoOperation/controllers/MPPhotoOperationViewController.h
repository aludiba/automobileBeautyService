//
//  MPPhotoOperationViewController.h
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import "MPBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@interface MPPhotoOperationViewController : MPBaseViewController

@property (nonatomic, strong) NSMutableArray *MPphotosArray;//存储照片的数组

@property (nonatomic, assign) MPPhotoOperationType MPCurrentType;//当前照片操作类型

@end

NS_ASSUME_NONNULL_END
