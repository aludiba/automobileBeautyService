#import <Foundation/Foundation.h>
#import "NSObject+RACDeallocating.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACReplaySubject.h"
#import <objc/message.h>
#import <objc/runtime.h>

@interface NSObject (RACDeallocating-Deletecomments)
+ (BOOL)rac_willDeallocSignal-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rac_deallocDisposable-Deletecomments:(NSInteger)-deleteComments;

@end
