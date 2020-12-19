//
//  MPMainPhotoCollectionViewCell.m
//  magicPicsew
//
//  Created by 123 on 2020/12/19.
//

#import "MPMainPhotoCollectionViewCell.h"

@interface MPMainPhotoCollectionViewCell()

@end

@implementation MPMainPhotoCollectionViewCell
#pragma mark - 属性懒加载
- (UIImageView *)MPContentImgView{
    if (!_MPContentImgView) {
        _MPContentImgView = [[UIImageView alloc] init];
        [self.contentView addSubview:_MPContentImgView];
        [_MPContentImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.right.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return _MPContentImgView;
}
@end
