#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "NSObject+RACDescription.h"
#import "RACBlockTrampoline.h"
#import "RACTuple.h"

@interface RACStream (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)emptyBm:(NSInteger)BM;
+ (BOOL)bindBm:(NSInteger)BM;
+ (BOOL)returnBm:(NSInteger)BM;
+ (BOOL)concatBm:(NSInteger)BM;
+ (BOOL)zipWithBm:(NSInteger)BM;
+ (BOOL)setNameWithFormatBm:(NSInteger)BM;

@end
