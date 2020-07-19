#import <Foundation/Foundation.h>
#import "NSString+RACKeyPathUtilities.h"

@interface NSString (RACKeyPathUtilitiesHb)
+ (BOOL)rac_keyPathComponentsHb:(NSInteger)hb;
+ (BOOL)rac_keyPathByDeletingLastKeyPathComponentHb:(NSInteger)hb;
+ (BOOL)rac_keyPathByDeletingFirstKeyPathComponentHb:(NSInteger)hb;

@end
