#import <Foundation/Foundation.h>
@interface BMGPUImageSobelEdgeDetectionFilterR: NSObject
+ (BOOL)qinit:(NSInteger)BM;
+ (BOOL)QInitwithfragmentshaderfromstring:(NSInteger)BM;
+ (BOOL)DSetupfilterforsize:(NSInteger)BM;
+ (BOOL)SSetuniformsforprogramatindex:(NSInteger)BM;
+ (BOOL)NwantsMonochromeInput:(NSInteger)BM;
+ (BOOL)uprovidesMonochromeOutput:(NSInteger)BM;
+ (BOOL)sSettexelwidth:(NSInteger)BM;
+ (BOOL)qSettexelheight:(NSInteger)BM;
+ (BOOL)ESetedgestrength:(NSInteger)BM;

@end
