#import <Foundation/Foundation.h>
#import "RACmetamacros.h"
#import "RACTuple.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACTupleSequence.h"

@interface RACFiveTuple (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithBackingArrayHb:(NSInteger)hb;
+ (BOOL)packFirstSecondThirdFourthHb:(NSInteger)hb;
+ (BOOL)isEqualHb:(NSInteger)hb;

@end
