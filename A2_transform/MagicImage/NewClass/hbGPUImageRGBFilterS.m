#import "hbGPUImageRGBFilterS.h"
@implementation hbGPUImageRGBFilterS
+ (BOOL)Jinit:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)USetred:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)XSetgreen:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)TSetblue:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
