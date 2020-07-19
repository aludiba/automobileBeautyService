#import "hbGPUImagePixellateFilterB.h"
@implementation hbGPUImagePixellateFilterB
+ (BOOL)AInitbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)GInitwithfragmentshaderfromstringbm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)LAdjustaspectratiobm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)QSetinputrotationatindexbm:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)VForceprocessingatsizebm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)MSetinputsizeatindexbm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)sSetfractionalwidthofapixelbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)ZSetaspectratiobm:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
