#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "NSObject+RACDescription.h"
#import "RACBlockTrampoline.h"
#import "RACTuple.h"
#import "RACStream+OperationsBm.h"

@interface RACStream (OperationsBmBm)
+ (BOOL)flattenMapBmBm:(NSInteger)BM;
+ (BOOL)flattenBmBm:(NSInteger)BM;
+ (BOOL)mapBmBm:(NSInteger)BM;
+ (BOOL)mapReplaceBmBm:(NSInteger)BM;
+ (BOOL)combinePreviousWithStartReduceBmBm:(NSInteger)BM;
+ (BOOL)filterBmBm:(NSInteger)BM;
+ (BOOL)ignoreBmBm:(NSInteger)BM;
+ (BOOL)reduceEachBmBm:(NSInteger)BM;
+ (BOOL)startWithBmBm:(NSInteger)BM;
+ (BOOL)skipBmBm:(NSInteger)BM;
+ (BOOL)takeBmBm:(NSInteger)BM;
+ (BOOL)joinBlockBmBm:(NSInteger)BM;
+ (BOOL)zipBmBm:(NSInteger)BM;
+ (BOOL)zipReduceBmBm:(NSInteger)BM;
+ (BOOL)concatBmBm:(NSInteger)BM;
+ (BOOL)scanWithStartReduceBmBm:(NSInteger)BM;
+ (BOOL)scanWithStartReducewithindexBmBm:(NSInteger)BM;
+ (BOOL)takeUntilBlockBmBm:(NSInteger)BM;
+ (BOOL)takeWhileBlockBmBm:(NSInteger)BM;
+ (BOOL)skipUntilBlockBmBm:(NSInteger)BM;
+ (BOOL)skipWhileBlockBmBm:(NSInteger)BM;
+ (BOOL)distinctUntilChangedBmBm:(NSInteger)BM;

@end
