#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIButton+AFNetworking.h"
#import <objc/runtime.h>
#import "UIImageView+AFNetworking.h"
#import "AFImageDownloader.h"

@interface UIButton (_AFNetworkingHb)
+ (BOOL)af_imageDownloadReceiptForStateHb:(NSInteger)hb;
+ (BOOL)af_setImageDownloadReceiptForstateHb:(NSInteger)hb;
+ (BOOL)af_backgroundImageDownloadReceiptForStateHb:(NSInteger)hb;
+ (BOOL)af_setBackgroundImageDownloadReceiptForstateHb:(NSInteger)hb;

@end
