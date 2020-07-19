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

@interface UIRefreshControl (RACCommandSupportHb)
+ (BOOL)rac_commandHb:(NSInteger)hb;
+ (BOOL)setRac_commandHb:(NSInteger)hb;

@end
