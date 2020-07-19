#import "RACSequence.h"
#import "RACUnarySequence.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "NSObject+RACDescription.h"

@interface RACUnarySequence (Hb)
+ (BOOL)returnHb:(NSInteger)hb;
+ (BOOL)tailHb:(NSInteger)hb;
+ (BOOL)bindHb:(NSInteger)hb;
+ (BOOL)classForCoderHb:(NSInteger)hb;
+ (BOOL)initWithCoderHb:(NSInteger)hb;
+ (BOOL)encodeWithCoderHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;
+ (BOOL)hashHb:(NSInteger)hb;
+ (BOOL)isEqualHb:(NSInteger)hb;

@end
