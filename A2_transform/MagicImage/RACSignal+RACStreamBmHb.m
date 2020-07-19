#import "RACSignal+RACStreamBmHb.h"
@implementation RACSignal (RACStreamBmHb)
+ (BOOL)emptyBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)returnBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)bindBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)concatBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)zipWithBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
