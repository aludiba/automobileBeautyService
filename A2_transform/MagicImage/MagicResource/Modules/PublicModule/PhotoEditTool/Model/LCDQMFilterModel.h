#import <Foundation/Foundation.h>
@interface LCDQMFilterModel : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *enName;
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, strong) NSString *fragmentShader;
@property (nonatomic, assign) float currentAlphaValue;
@property (nonatomic, strong) NSArray<NSString *> *textureImages;
+ (LCDQMFilterModel *)buildFilterModelWithFilterPath:(NSString *)filter;
+ (NSArray<LCDQMFilterModel *> *)buildFilterModelsWithPath:(NSString *)folder;
@end
