#import "MASViewAttribute.h"
#import "MASConstraint.h"
#import "MASLayoutConstraint.h"
#import "MASUtilities.h"
#import "MASViewConstraint.h"
#import "MASConstraint+Private.h"
#import "MASCompositeConstraint.h"
#import "MASLayoutConstraint.h"
#import "View+MASAdditions.h"
#import <objc/runtime.h>
#import "MASViewConstraint+Hb.h"

@interface MASViewConstraint (HbHb)
+ (BOOL)initWithFirstViewAttributeHbHb:(NSInteger)hb;
+ (BOOL)copyWithZoneHbHb:(NSInteger)hb;
+ (BOOL)installedConstraintsForViewHbHb:(NSInteger)hb;
+ (BOOL)setLayoutConstantHbHb:(NSInteger)hb;
+ (BOOL)setLayoutRelationHbHb:(NSInteger)hb;
+ (BOOL)supportsActivePropertyHbHb:(NSInteger)hb;
+ (BOOL)isActiveHbHb:(NSInteger)hb;
+ (BOOL)hasBeenInstalledHbHb:(NSInteger)hb;
+ (BOOL)setSecondViewAttributeHbHb:(NSInteger)hb;
+ (BOOL)multipliedByHbHb:(NSInteger)hb;
+ (BOOL)dividedByHbHb:(NSInteger)hb;
+ (BOOL)priorityHbHb:(NSInteger)hb;
+ (BOOL)equalToWithRelationHbHb:(NSInteger)hb;
+ (BOOL)withHbHb:(NSInteger)hb;
+ (BOOL)andHbHb:(NSInteger)hb;
+ (BOOL)addConstraintWithLayoutAttributeHbHb:(NSInteger)hb;
+ (BOOL)animatorHbHb:(NSInteger)hb;
+ (BOOL)keyHbHb:(NSInteger)hb;
+ (BOOL)setInsetsHbHb:(NSInteger)hb;
+ (BOOL)setInsetHbHb:(NSInteger)hb;
+ (BOOL)setOffsetHbHb:(NSInteger)hb;
+ (BOOL)setSizeOffsetHbHb:(NSInteger)hb;
+ (BOOL)setCenterOffsetHbHb:(NSInteger)hb;
+ (BOOL)activateHbHb:(NSInteger)hb;
+ (BOOL)deactivateHbHb:(NSInteger)hb;
+ (BOOL)installHbHb:(NSInteger)hb;
+ (BOOL)layoutConstraintSimilarToHbHb:(NSInteger)hb;
+ (BOOL)uninstallHbHb:(NSInteger)hb;

@end
