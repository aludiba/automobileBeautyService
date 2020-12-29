//
//  MPMainPhotoCollectionViewCell.m
//  magicPicsew
//
//  Created by 123 on 2020/12/19.
//

#import "MPMainPhotoCollectionViewCell.h"
#import "MPMainPhotoModel.h"
#import "UIImage+UIImageExt.h"

@interface MPMainPhotoCollectionViewCell()

@property (nonatomic, strong) UIImageView *MPContentImgView;//内容图片

@property (nonatomic, strong) UIView *MPBlueView;//蓝色遮罩

@property (nonatomic, strong) UILabel *MPIndexLbl;//选中的第几个
@end

@implementation MPMainPhotoCollectionViewCell
#pragma mark - action
- (void)setPhotoModel:(MPMainPhotoModel *)photoModel{
    _photoModel = photoModel;
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    CGSize size = CGSizeZero;
    // 同步获得图片, 只会返回1张图片
    options.synchronous = YES;
    // 从asset中获得图片
    [[PHImageManager defaultManager] requestImageForAsset:_photoModel.asset targetSize:size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
        self.MPContentImgView.image = [result MPimageByScalingAndCroppingForSize:CGSizeMake((MPWIDTH - 5) / 4, (MPWIDTH - 5) / 4)];
    }];
    if (_photoModel.isSelect) {
        self.MPBlueView.hidden = NO;
        self.MPIndexLbl.hidden = NO;
        self.MPIndexLbl.text = [NSString stringWithFormat:@"%ld",_photoModel.index];
    }else{
        self.MPBlueView.hidden = YES;
        self.MPIndexLbl.hidden = YES;
        self.MPIndexLbl.text = @"";
    }
}
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
- (UIView *)MPBlueView{
    if (!_MPBlueView) {
        _MPBlueView = [[UIView alloc] init];
        _MPBlueView.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.6];
        [self.contentView addSubview:_MPBlueView];
        [_MPBlueView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.right.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return _MPBlueView;
}
- (UILabel *)MPIndexLbl{
    if (!_MPIndexLbl) {
        _MPIndexLbl = [[UILabel alloc] init];
        _MPIndexLbl.textColor = [UIColor whiteColor];
        _MPIndexLbl.font = [UIFont systemFontOfSize:18];
        [self.contentView addSubview:_MPIndexLbl];
        [_MPIndexLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
    }
    return _MPIndexLbl;
}
@end
