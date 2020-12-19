//
//  MPSetTableViewCell.m
//  magicPicsew
//
//  Created by 123 on 2020/11/16.
//

#import "MPSetTableViewCell.h"
#import "MPSetModel.h"

@interface MPSetTableViewCell()

@property (nonatomic, strong) UIImageView *MPheadImgView;//头部图片

@property (nonatomic, strong) UILabel *MPtitleLbl;//标题

@property (nonatomic, strong) UIImageView *MParrowImgView;//右箭头

@property (nonatomic, strong) UIView *MPline;//底线

@end
@implementation MPSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self MPsetContentView];
    }
    return self;
}
- (void)MPsetContentView{
    [self.contentView addSubview:self.MPheadImgView];
    [self.contentView addSubview:self.MPtitleLbl];
    [self.contentView addSubview:self.MParrowImgView];
    [self.contentView addSubview:self.MPline];
    
    [self.MPheadImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.contentView).offset(10);
        make.bottom.equalTo(self.contentView).offset(-10);
        make.width.mas_equalTo(20);
    }];
    [self.MPtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.MPheadImgView.mas_right).offset(16);
        make.top.equalTo(self.contentView).offset(10);
        make.bottom.equalTo(self.contentView).offset(-10);
        make.right.equalTo(self.contentView).offset(-42);
    }];
    [self.MParrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView);
        make.right.equalTo(self.contentView).offset(-16);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    [self.MPline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.MPtitleLbl.mas_bottom).offset(9);
        make.left.equalTo(self.contentView).offset(16);
        make.bottom.equalTo(self.contentView);
        make.right.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(1);
    }];
}
#pragma MARK - actions
- (void)setMPmodel:(MPSetModel *)MPmodel{
    _MPmodel = MPmodel;
    self.MPheadImgView.image = [UIImage imageNamed:_MPmodel.MPimgName];
    self.MPtitleLbl.text = _MPmodel.MPtitle;
}
#pragma MARK - 属性懒加载
- (UIImageView *)MPheadImgView{
    if (!_MPheadImgView) {
        _MPheadImgView = [[UIImageView alloc] init];
    }
    return _MPheadImgView;
}
- (UILabel *)MPtitleLbl{
    if (!_MPtitleLbl) {
        _MPtitleLbl = [[UILabel alloc] init];
        _MPtitleLbl.textColor = [UIColor blackColor];
        _MPtitleLbl.font = [UIFont systemFontOfSize:16];
    }
    return _MPtitleLbl;
}
- (UIImageView *)MParrowImgView{
    if (!_MParrowImgView) {
        _MParrowImgView = [[UIImageView alloc] init];
        _MParrowImgView.image = [UIImage imageNamed:@"MP_youbianjiantou"];
    }
    return _MParrowImgView;
}
- (UIView *)MPline{
    if (!_MPline) {
        _MPline = [[UIView alloc] init];
        _MPline.backgroundColor = MPColor(242, 242, 242, 1);
    }
    return _MPline;
}
@end
