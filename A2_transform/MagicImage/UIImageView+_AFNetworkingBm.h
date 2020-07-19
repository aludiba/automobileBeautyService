#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFImageDownloader.h"

@interface UIImageView (_AFNetworkingBm)
+ (BOOL)af_activeImageDownloadReceiptBm:(NSInteger)BM;
+ (BOOL)af_setActiveImageDownloadReceiptBm:(NSInteger)BM;

@end
