#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFImageDownloader.h"
#import "UIImageView+_AFNetworkingBm.h"

@interface UIImageView (_AFNetworkingBmBm)
+ (BOOL)af_activeImageDownloadReceiptBmBm:(NSInteger)BM;
+ (BOOL)af_setActiveImageDownloadReceiptBmBm:(NSInteger)BM;

@end
