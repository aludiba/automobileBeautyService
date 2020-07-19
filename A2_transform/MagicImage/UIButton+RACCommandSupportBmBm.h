#import <UIKit/UIKit.h>
#import "UIButton+RACCommandSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACCommand.h"
#import "RACDisposable.h"
#import "RACSignal+Operations.h"
#import <objc/runtime.h>
#import "UIButton+RACCommandSupportBm.h"

@interface UIButton (RACCommandSupportBmBm)
+ (BOOL)rac_commandBmBm:(NSInteger)BM;
+ (BOOL)setRac_commandBmBm:(NSInteger)BM;
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBm:(NSInteger)BM;
+ (BOOL)rac_commandPerformActionBmBm:(NSInteger)BM;

@end
