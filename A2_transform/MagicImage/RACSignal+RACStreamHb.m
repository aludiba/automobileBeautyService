#import "RACSignal+RACStreamHb.h"
@implementation RACSignal (RACStreamHb)
+ (BOOL)emptyHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)returnHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)bindHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)concatHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)zipWithHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
