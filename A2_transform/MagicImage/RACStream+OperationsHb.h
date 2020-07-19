#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "NSObject+RACDescription.h"
#import "RACBlockTrampoline.h"
#import "RACTuple.h"

@interface RACStream (OperationsHb)
+ (BOOL)flattenMapHb:(NSInteger)hb;
+ (BOOL)flattenHb:(NSInteger)hb;
+ (BOOL)mapHb:(NSInteger)hb;
+ (BOOL)mapReplaceHb:(NSInteger)hb;
+ (BOOL)combinePreviousWithStartReduceHb:(NSInteger)hb;
+ (BOOL)filterHb:(NSInteger)hb;
+ (BOOL)ignoreHb:(NSInteger)hb;
+ (BOOL)reduceEachHb:(NSInteger)hb;
+ (BOOL)startWithHb:(NSInteger)hb;
+ (BOOL)skipHb:(NSInteger)hb;
+ (BOOL)takeHb:(NSInteger)hb;
+ (BOOL)joinBlockHb:(NSInteger)hb;
+ (BOOL)zipHb:(NSInteger)hb;
+ (BOOL)zipReduceHb:(NSInteger)hb;
+ (BOOL)concatHb:(NSInteger)hb;
+ (BOOL)scanWithStartReduceHb:(NSInteger)hb;
+ (BOOL)scanWithStartReducewithindexHb:(NSInteger)hb;
+ (BOOL)takeUntilBlockHb:(NSInteger)hb;
+ (BOOL)takeWhileBlockHb:(NSInteger)hb;
+ (BOOL)skipUntilBlockHb:(NSInteger)hb;
+ (BOOL)skipWhileBlockHb:(NSInteger)hb;
+ (BOOL)distinctUntilChangedHb:(NSInteger)hb;

@end
