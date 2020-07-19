#import <UIKit/UIKit.h>
#import "UIImagePickerController+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>

@interface UIImagePickerController (RACSignalSupportHb)
+ (BOOL)rac_delegateProxyHb:(NSInteger)hb;
+ (BOOL)rac_imageSelectedSignalHb:(NSInteger)hb;

@end
