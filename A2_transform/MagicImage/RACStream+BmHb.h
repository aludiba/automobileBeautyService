#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "NSObject+RACDescription.h"
#import "RACBlockTrampoline.h"
#import "RACTuple.h"
#import "RACStream+Bm.h"

@interface RACStream (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)emptyBmHb:(NSInteger)hb;
+ (BOOL)bindBmHb:(NSInteger)hb;
+ (BOOL)returnBmHb:(NSInteger)hb;
+ (BOOL)concatBmHb:(NSInteger)hb;
+ (BOOL)zipWithBmHb:(NSInteger)hb;
+ (BOOL)setNameWithFormatBmHb:(NSInteger)hb;

@end
