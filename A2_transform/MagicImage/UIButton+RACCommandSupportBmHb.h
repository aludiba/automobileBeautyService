#import <UIKit/UIKit.h>
#import "UIButton+RACCommandSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACCommand.h"
#import "RACDisposable.h"
#import "RACSignal+Operations.h"
#import <objc/runtime.h>
#import "UIButton+RACCommandSupportBm.h"

@interface UIButton (RACCommandSupportBmHb)
+ (BOOL)rac_commandBmHb:(NSInteger)hb;
+ (BOOL)setRac_commandBmHb:(NSInteger)hb;
+ (BOOL)rac_hijackActionAndTargetIfNeededBmHb:(NSInteger)hb;
+ (BOOL)rac_commandPerformActionBmHb:(NSInteger)hb;

@end
