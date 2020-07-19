#import "BKQMFilterModel.h"
#define kFilterShaderDefaultAlphaValue 0.6f
@implementation BKQMFilterModel
 + (BKQMFilterModel *)buildFilterModelWithFilterPath:(NSString *)filter
{
    NSString *currentFolder = filter;
    NSString *config = [currentFolder stringByAppendingPathComponent:@"config.json"];
    NSData *configData = [NSData dataWithContentsOfFile:config];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:configData options:NSJSONReadingMutableContainers error:nil];
    if (!dict) {
        return nil;
    }
    BKQMFilterModel *model = [[BKQMFilterModel alloc] init];
    model.enName = [[currentFolder lastPathComponent] lowercaseString];
    model.name = dict[@"name"];
    model.fragmentShader = [currentFolder stringByAppendingPathComponent:dict[@"fragment"]];
    model.icon = [currentFolder stringByAppendingPathComponent:dict[@"icon"]];
    model.currentAlphaValue = kFilterShaderDefaultAlphaValue;
    NSMutableArray *imageArray = [NSMutableArray array];
    for (NSString *image in dict[@"images"]) {
        [imageArray addObject:[currentFolder stringByAppendingPathComponent:image]];
    }
    model.textureImages = imageArray;
    return model;
}
+ (NSArray<BKQMFilterModel *> *)buildFilterModelsWithPath:(NSString *)folder
{
    if (![[NSFileManager defaultManager] fileExistsAtPath:folder]) {
        return nil;
    }
    NSMutableArray<BKQMFilterModel *> *filters = [NSMutableArray array];
    NSArray<NSString *> *filterFolder = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:folder error:nil];
    for (NSString *filter in filterFolder) {
        NSString *currentFolder = [folder stringByAppendingPathComponent:filter];
        BKQMFilterModel *model = [self buildFilterModelWithFilterPath:currentFolder];
        if (model) {
            [filters addObject:model];
        }
    }
    return filters;
}
@end
