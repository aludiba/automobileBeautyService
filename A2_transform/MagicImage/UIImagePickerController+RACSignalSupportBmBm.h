#import <UIKit/UIKit.h>
#import "UIImagePickerController+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>
#import "UIImagePickerController+RACSignalSupportBm.h"

@interface UIImagePickerController (RACSignalSupportBmBm)
+ (BOOL)rac_delegateProxyBmBm:(NSInteger)BM;
+ (BOOL)rac_imageSelectedSignalBmBm:(NSInteger)BM;

@end
