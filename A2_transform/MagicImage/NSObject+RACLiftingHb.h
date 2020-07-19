#import <Foundation/Foundation.h>
#import "NSObject+RACLifting.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSInvocation+RACTypeParsing.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import "RACSignal+Operations.h"
#import "RACTuple.h"

@interface NSObject (RACLiftingHb)
+ (BOOL)rac_liftSelectorWithsignalofargumentsHb:(NSInteger)hb;
+ (BOOL)rac_liftSelectorWithsignalsfromarrayHb:(NSInteger)hb;
+ (BOOL)rac_liftSelectorWithsignalsHb:(NSInteger)hb;

@end
