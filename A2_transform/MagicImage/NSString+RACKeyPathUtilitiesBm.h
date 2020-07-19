#import <Foundation/Foundation.h>
#import "NSString+RACKeyPathUtilities.h"

@interface NSString (RACKeyPathUtilitiesBm)
+ (BOOL)rac_keyPathComponentsBm:(NSInteger)BM;
+ (BOOL)rac_keyPathByDeletingLastKeyPathComponentBm:(NSInteger)BM;
+ (BOOL)rac_keyPathByDeletingFirstKeyPathComponentBm:(NSInteger)BM;

@end
