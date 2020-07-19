#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIButton+AFNetworking.h"
#import <objc/runtime.h>
#import "UIImageView+AFNetworking.h"
#import "AFImageDownloader.h"

@interface UIButton (_AFNetworkingBm)
+ (BOOL)af_imageDownloadReceiptForStateBm:(NSInteger)BM;
+ (BOOL)af_setImageDownloadReceiptForstateBm:(NSInteger)BM;
+ (BOOL)af_backgroundImageDownloadReceiptForStateBm:(NSInteger)BM;
+ (BOOL)af_setBackgroundImageDownloadReceiptForstateBm:(NSInteger)BM;

@end
