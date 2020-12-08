//
//  MPRecentProjectsTableViewCell.m
//  magicPicsew
//
//  Created by 123 on 2020/12/1.
//

#import "MPRecentProjectsTableViewCell.h"
#import "MPRecentProjectsModel.h"

@interface MPRecentProjectsTableViewCell()

@property (nonatomic, strong) UIImageView *MPHeaderImgView;//头部图片

@property (nonatomic, strong) UILabel *MPTitleLbl;//标题

@property (nonatomic, strong) UILabel *MPNumberLbl;//数量

@property (nonatomic, strong) UIView *MPLine;//底线
@end
@implementation MPRecentProjectsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self MPSetContentViews];
    }
    return self;
}
#pragma mark - actions
- (void)MPSetContentViews{
    [self.contentView addSubview:self.MPHeaderImgView];
    [self.contentView addSubview:self.MPTitleLbl];
    [self.contentView addSubview:self.MPNumberLbl];
    [self.contentView addSubview:self.MPLine];
    
    [self.MPHeaderImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.contentView).offset(10);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(60);
    }];
    [self.MPTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.MPHeaderImgView.mas_right).offset(16);
        make.centerY.equalTo(self.MPHeaderImgView);
        make.right.equalTo(self.contentView).offset(-86);
        make.height.mas_equalTo(20);
    }];
    [self.MPNumberLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView).offset(-16);
        make.centerY.equalTo(self.MPHeaderImgView);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(20);
    }];
    [self.MPLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.MPTitleLbl.mas_bottom).offset(9);
        make.left.equalTo(self.contentView).offset(16);
        make.right.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(1);
        make.bottom.equalTo(self.contentView);
    }];
}
- (void)setMPmodel:(MPRecentProjectsModel *)MPmodel{
    _MPmodel = MPmodel;
    
}
#pragma mark - 属性懒加载
- (UIImageView *)MPHeaderImgView{
    if (!_MPHeaderImgView) {
        _MPHeaderImgView = [[UIImageView alloc] init];
        _MPHeaderImgView.layer.masksToBounds = YES;
        _MPHeaderImgView.layer.cornerRadius = 4.0f;
    }
    return _MPHeaderImgView;
}
- (UILabel *)MPTitleLbl{
    if (!_MPTitleLbl) {
        _MPTitleLbl = [[UILabel alloc] init];
        _MPTitleLbl.font = [UIFont systemFontOfSize:16];
        _MPTitleLbl.textColor = [UIColor blackColor];
    }
    return _MPTitleLbl;
}
- (UILabel *)MPNumberLbl{
    if (!_MPNumberLbl) {
        _MPNumberLbl = [[UILabel alloc] init];
        _MPNumberLbl.font = [UIFont systemFontOfSize:14];
        _MPNumberLbl.textColor = MPH_Color(245, 245, 245, 1);
    }
    return _MPNumberLbl;
}
- (UIView *)MPLine{
    if (_MPLine) {
        _MPLine = [[UIView alloc] init];
        _MPLine.backgroundColor = MPH_Color(242, 242, 242, 1);
    }
    return _MPLine;
}
@end
