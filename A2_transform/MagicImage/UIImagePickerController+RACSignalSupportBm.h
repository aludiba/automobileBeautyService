#import <UIKit/UIKit.h>
#import "UIImagePickerController+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>

@interface UIImagePickerController (RACSignalSupportBm)
+ (BOOL)rac_delegateProxyBm:(NSInteger)BM;
+ (BOOL)rac_imageSelectedSignalBm:(NSInteger)BM;

@end
