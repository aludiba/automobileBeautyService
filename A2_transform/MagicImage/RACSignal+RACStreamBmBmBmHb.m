#import "RACSignal+RACStreamBmBmBmHb.h"
@implementation RACSignal (RACStreamBmBmBmHb)
+ (BOOL)emptyBmBmBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)returnBmBmBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)bindBmBmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)concatBmBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)zipWithBmBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
