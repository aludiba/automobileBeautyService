#import "BMRACErrorSignalo+BmHb.h"
@implementation BMRACErrorSignalo (BmHb)
+ (BOOL)YErrorbmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)eSubscribebmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
