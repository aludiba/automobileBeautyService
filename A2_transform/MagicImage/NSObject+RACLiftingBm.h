#import <Foundation/Foundation.h>
#import "NSObject+RACLifting.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSInvocation+RACTypeParsing.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import "RACSignal+Operations.h"
#import "RACTuple.h"

@interface NSObject (RACLiftingBm)
+ (BOOL)rac_liftSelectorWithsignalofargumentsBm:(NSInteger)BM;
+ (BOOL)rac_liftSelectorWithsignalsfromarrayBm:(NSInteger)BM;
+ (BOOL)rac_liftSelectorWithsignalsBm:(NSInteger)BM;

@end
