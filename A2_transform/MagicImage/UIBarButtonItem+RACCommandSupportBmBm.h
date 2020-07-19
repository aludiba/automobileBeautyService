#import <UIKit/UIKit.h>
#import "UIBarButtonItem+RACCommandSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACCommand.h"
#import "RACDisposable.h"
#import "RACSignal+Operations.h"
#import <objc/runtime.h>
#import "UIBarButtonItem+RACCommandSupportBm.h"

@interface UIBarButtonItem (RACCommandSupportBmBm)
+ (BOOL)rac_commandBmBm:(NSInteger)BM;
+ (BOOL)setRac_commandBmBm:(NSInteger)BM;
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBm:(NSInteger)BM;
+ (BOOL)rac_commandPerformActionBmBm:(NSInteger)BM;

@end
