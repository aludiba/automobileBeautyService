#import "hbRACErrorSignalz+Hb.h"
@implementation hbRACErrorSignalz (Hb)
+ (BOOL)pErrorbmbmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)wSubscribebmbmHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
