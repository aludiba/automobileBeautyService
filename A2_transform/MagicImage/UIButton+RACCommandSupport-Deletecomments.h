#import <UIKit/UIKit.h>
#import "UIButton+RACCommandSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACCommand.h"
#import "RACDisposable.h"
#import "RACSignal+Operations.h"
#import <objc/runtime.h>

@interface UIButton (RACCommandSupport-Deletecomments)
+ (BOOL)rac_command-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setRac_command-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_hijackActionAndTargetIfNeeded-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_commandPerformAction-Deletecomments:(NSInteger)-deleteComments;

@end
