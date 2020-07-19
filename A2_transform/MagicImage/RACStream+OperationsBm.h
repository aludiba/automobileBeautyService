#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "NSObject+RACDescription.h"
#import "RACBlockTrampoline.h"
#import "RACTuple.h"

@interface RACStream (OperationsBm)
+ (BOOL)flattenMapBm:(NSInteger)BM;
+ (BOOL)flattenBm:(NSInteger)BM;
+ (BOOL)mapBm:(NSInteger)BM;
+ (BOOL)mapReplaceBm:(NSInteger)BM;
+ (BOOL)combinePreviousWithStartReduceBm:(NSInteger)BM;
+ (BOOL)filterBm:(NSInteger)BM;
+ (BOOL)ignoreBm:(NSInteger)BM;
+ (BOOL)reduceEachBm:(NSInteger)BM;
+ (BOOL)startWithBm:(NSInteger)BM;
+ (BOOL)skipBm:(NSInteger)BM;
+ (BOOL)takeBm:(NSInteger)BM;
+ (BOOL)joinBlockBm:(NSInteger)BM;
+ (BOOL)zipBm:(NSInteger)BM;
+ (BOOL)zipReduceBm:(NSInteger)BM;
+ (BOOL)concatBm:(NSInteger)BM;
+ (BOOL)scanWithStartReduceBm:(NSInteger)BM;
+ (BOOL)scanWithStartReducewithindexBm:(NSInteger)BM;
+ (BOOL)takeUntilBlockBm:(NSInteger)BM;
+ (BOOL)takeWhileBlockBm:(NSInteger)BM;
+ (BOOL)skipUntilBlockBm:(NSInteger)BM;
+ (BOOL)skipWhileBlockBm:(NSInteger)BM;
+ (BOOL)distinctUntilChangedBm:(NSInteger)BM;

@end
