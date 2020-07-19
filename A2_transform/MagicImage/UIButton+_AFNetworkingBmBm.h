#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIButton+AFNetworking.h"
#import <objc/runtime.h>
#import "UIImageView+AFNetworking.h"
#import "AFImageDownloader.h"
#import "UIButton+_AFNetworkingBm.h"

@interface UIButton (_AFNetworkingBmBm)
+ (BOOL)af_imageDownloadReceiptForStateBmBm:(NSInteger)BM;
+ (BOOL)af_setImageDownloadReceiptForstateBmBm:(NSInteger)BM;
+ (BOOL)af_backgroundImageDownloadReceiptForStateBmBm:(NSInteger)BM;
+ (BOOL)af_setBackgroundImageDownloadReceiptForstateBmBm:(NSInteger)BM;

@end
