#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "NSObject+RACDescription.h"
#import "RACBlockTrampoline.h"
#import "RACTuple.h"
#import "RACStream+OperationsBm.h"

@interface RACStream (OperationsBmHb)
+ (BOOL)flattenMapBmHb:(NSInteger)hb;
+ (BOOL)flattenBmHb:(NSInteger)hb;
+ (BOOL)mapBmHb:(NSInteger)hb;
+ (BOOL)mapReplaceBmHb:(NSInteger)hb;
+ (BOOL)combinePreviousWithStartReduceBmHb:(NSInteger)hb;
+ (BOOL)filterBmHb:(NSInteger)hb;
+ (BOOL)ignoreBmHb:(NSInteger)hb;
+ (BOOL)reduceEachBmHb:(NSInteger)hb;
+ (BOOL)startWithBmHb:(NSInteger)hb;
+ (BOOL)skipBmHb:(NSInteger)hb;
+ (BOOL)takeBmHb:(NSInteger)hb;
+ (BOOL)joinBlockBmHb:(NSInteger)hb;
+ (BOOL)zipBmHb:(NSInteger)hb;
+ (BOOL)zipReduceBmHb:(NSInteger)hb;
+ (BOOL)concatBmHb:(NSInteger)hb;
+ (BOOL)scanWithStartReduceBmHb:(NSInteger)hb;
+ (BOOL)scanWithStartReducewithindexBmHb:(NSInteger)hb;
+ (BOOL)takeUntilBlockBmHb:(NSInteger)hb;
+ (BOOL)takeWhileBlockBmHb:(NSInteger)hb;
+ (BOOL)skipUntilBlockBmHb:(NSInteger)hb;
+ (BOOL)skipWhileBlockBmHb:(NSInteger)hb;
+ (BOOL)distinctUntilChangedBmHb:(NSInteger)hb;

@end
