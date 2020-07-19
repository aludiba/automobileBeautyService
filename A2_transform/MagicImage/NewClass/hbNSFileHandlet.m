#import "hbNSFileHandlet.h"
@implementation hbNSFileHandlet
+ (BOOL)Trac_readInBackground:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
