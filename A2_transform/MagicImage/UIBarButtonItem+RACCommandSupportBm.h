#import <UIKit/UIKit.h>
#import "UIBarButtonItem+RACCommandSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACCommand.h"
#import "RACDisposable.h"
#import "RACSignal+Operations.h"
#import <objc/runtime.h>

@interface UIBarButtonItem (RACCommandSupportBm)
+ (BOOL)rac_commandBm:(NSInteger)BM;
+ (BOOL)setRac_commandBm:(NSInteger)BM;
+ (BOOL)rac_hijackActionAndTargetIfNeededBm:(NSInteger)BM;
+ (BOOL)rac_commandPerformActionBm:(NSInteger)BM;

@end
