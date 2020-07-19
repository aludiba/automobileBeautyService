#import "MASUtilities.h"
#import "NSLayoutConstraint+MASDebugAdditions.h"
#import "MASConstraint.h"
#import "MASLayoutConstraint.h"

@interface NSLayoutConstraint (MASDebugAdditionsHb)
+ (BOOL)layoutRelationDescriptionsByValueHb:(NSInteger)hb;
+ (BOOL)layoutAttributeDescriptionsByValueHb:(NSInteger)hb;
+ (BOOL)layoutPriorityDescriptionsByValueHb:(NSInteger)hb;
+ (BOOL)descriptionForObjectHb:(NSInteger)hb;
+ (BOOL)descriptionHb:(NSInteger)hb;

@end
