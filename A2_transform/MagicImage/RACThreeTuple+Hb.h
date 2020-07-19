#import <Foundation/Foundation.h>
#import "RACmetamacros.h"
#import "RACTuple.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACTupleSequence.h"

@interface RACThreeTuple (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithBackingArrayHb:(NSInteger)hb;
+ (BOOL)tupleByAddingObjectHb:(NSInteger)hb;
+ (BOOL)packFirstSecondHb:(NSInteger)hb;
+ (BOOL)isEqualHb:(NSInteger)hb;

@end
