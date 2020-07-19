#import <UIKit/UIKit.h>
#import "UIRefreshControl+RACCommandSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACCommand.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACSignal.h"
#import "RACSignal+Operations.h"
#import "UIControl+RACSignalSupport.h"
#import <objc/runtime.h>
#import "UIRefreshControl+RACCommandSupportBm.h"

@interface UIRefreshControl (RACCommandSupportBmHb)
+ (BOOL)rac_commandBmHb:(NSInteger)hb;
+ (BOOL)setRac_commandBmHb:(NSInteger)hb;

@end
