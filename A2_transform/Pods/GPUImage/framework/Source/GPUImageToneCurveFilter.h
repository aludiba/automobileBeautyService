#import "GPUImageFilter.h"
@interface GPUImageToneCurveFilter : GPUImageFilter
@property(readwrite, nonatomic, copy) NSArray *redControlPoints;
@property(readwrite, nonatomic, copy) NSArray *greenControlPoints;
@property(readwrite, nonatomic, copy) NSArray *blueControlPoints;
@property(readwrite, nonatomic, copy) NSArray *rgbCompositeControlPoints;
- (id)initWithACVData:(NSData*)data;
- (id)initWithACV:(NSString*)curveFilename;
- (id)initWithACVURL:(NSURL*)curveFileURL;
- (void)setRGBControlPoints:(NSArray *)points DEPRECATED_ATTRIBUTE;
- (void)setPointsWithACV:(NSString*)curveFilename;
- (void)setPointsWithACVURL:(NSURL*)curveFileURL;
- (NSMutableArray *)getPreparedSplineCurve:(NSArray *)points;
- (NSMutableArray *)splineCurve:(NSArray *)points;
- (NSMutableArray *)secondDerivative:(NSArray *)cgPoints;
- (void)updateToneCurveTexture;
@end
