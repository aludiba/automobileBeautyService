#import <Foundation/Foundation.h>
#import "RACStream.h"
#import "NSObject+RACDescription.h"
#import "RACBlockTrampoline.h"
#import "RACTuple.h"

@interface RACStream (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)emptyHb:(NSInteger)hb;
+ (BOOL)bindHb:(NSInteger)hb;
+ (BOOL)returnHb:(NSInteger)hb;
+ (BOOL)concatHb:(NSInteger)hb;
+ (BOOL)zipWithHb:(NSInteger)hb;
+ (BOOL)setNameWithFormatHb:(NSInteger)hb;

@end
