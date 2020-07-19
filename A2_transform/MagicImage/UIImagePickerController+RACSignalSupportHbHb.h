#import <UIKit/UIKit.h>
#import "UIImagePickerController+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>
#import "UIImagePickerController+RACSignalSupportHb.h"

@interface UIImagePickerController (RACSignalSupportHbHb)
+ (BOOL)rac_delegateProxyHbHb:(NSInteger)hb;
+ (BOOL)rac_imageSelectedSignalHbHb:(NSInteger)hb;

@end
