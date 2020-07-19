#import <UIKit/UIKit.h>
#import "UITextField+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import <ReactiveObjC/RACEXTScope.h>
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import "RACSignal+Operations.h"
#import "UIControl+RACSignalSupport.h"
#import "UIControl+RACSignalSupportPrivate.h"

@interface UITextField (RACSignalSupportBm)
+ (BOOL)rac_textSignalBm:(NSInteger)BM;
+ (BOOL)rac_newTextChannelBm:(NSInteger)BM;

@end
