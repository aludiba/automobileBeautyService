#import <Foundation/Foundation.h>
#import "RACmetamacros.h"
#import "RACTuple.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACTupleSequence.h"

@interface RACOneTuple (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithBackingArrayHb:(NSInteger)hb;
+ (BOOL)tupleByAddingObjectHb:(NSInteger)hb;
+ (BOOL)packHb:(NSInteger)hb;
+ (BOOL)isEqualHb:(NSInteger)hb;

@end
