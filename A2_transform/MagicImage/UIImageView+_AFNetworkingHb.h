#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFImageDownloader.h"

@interface UIImageView (_AFNetworkingHb)
+ (BOOL)af_activeImageDownloadReceiptHb:(NSInteger)hb;
+ (BOOL)af_setActiveImageDownloadReceiptHb:(NSInteger)hb;

@end
