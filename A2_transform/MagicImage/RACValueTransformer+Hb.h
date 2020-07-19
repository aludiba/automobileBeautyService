#import <Foundation/Foundation.h>
#import "RACValueTransformer.h"

@interface RACValueTransformer (Hb)
+ (BOOL)allowsReverseTransformationHb:(NSInteger)hb;
+ (BOOL)transformedValueHb:(NSInteger)hb;
+ (BOOL)transformerWithBlockHb:(NSInteger)hb;

@end
