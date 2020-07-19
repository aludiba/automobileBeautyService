#import <UIKit/UIKit.h>
#import "UIImagePickerController+RACSignalSupport.h"
#import "RACDelegateProxy.h"
#import "RACSignal+Operations.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import <objc/runtime.h>

@interface UIImagePickerController (RACSignalSupport-Deletecomments)
+ (BOOL)rac_delegateProxy-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_imageSelectedSignal-Deletecomments:(NSInteger)-deleteComments;

@end
