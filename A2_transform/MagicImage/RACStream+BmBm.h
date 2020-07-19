#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "NSObject+RACDescription.h"
#import "RACBlockTrampoline.h"
#import "RACTuple.h"
#import "RACStream+Bm.h"

@interface RACStream (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)emptyBmBm:(NSInteger)BM;
+ (BOOL)bindBmBm:(NSInteger)BM;
+ (BOOL)returnBmBm:(NSInteger)BM;
+ (BOOL)concatBmBm:(NSInteger)BM;
+ (BOOL)zipWithBmBm:(NSInteger)BM;
+ (BOOL)setNameWithFormatBmBm:(NSInteger)BM;

@end
