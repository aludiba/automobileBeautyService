#import <Foundation/Foundation.h>
@interface BKQMFilterModel : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *enName;
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, strong) NSString *fragmentShader;
@property (nonatomic, assign) float currentAlphaValue;
@property (nonatomic, strong) NSArray<NSString *> *textureImages;
+ (BKQMFilterModel *)buildFilterModelWithFilterPath:(NSString *)filter;
+ (NSArray<BKQMFilterModel *> *)buildFilterModelsWithPath:(NSString *)folder;
@end
