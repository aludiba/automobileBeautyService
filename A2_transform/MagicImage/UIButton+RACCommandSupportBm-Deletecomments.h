#import <UIKit/UIKit.h>
#import "UIButton+RACCommandSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACCommand.h"
#import "RACDisposable.h"
#import "RACSignal+Operations.h"
#import <objc/runtime.h>
#import "UIButton+RACCommandSupportBm.h"

@interface UIButton (RACCommandSupportBm-Deletecomments)
+ (BOOL)rac_commandBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setRac_commandBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_hijackActionAndTargetIfNeededBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_commandPerformActionBm-Deletecomments:(NSInteger)-deleteComments;

@end
