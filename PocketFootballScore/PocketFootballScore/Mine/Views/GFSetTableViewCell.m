//
//  GFSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFSetTableViewCell.h"
#import "GFSetViewModel.h"
@interface GFSetTableViewCell()
@property(nonatomic, strong)UILabel *GFtitleLbl;
@property(nonatomic, strong)UILabel *GFcontentLbl;
@property(nonatomic, strong)UIImageView *GFarrowImgView;
@end
@implementation GFSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.GFtitleLbl];
        [self.contentView addSubview:self.GFcontentLbl];
        [self.contentView addSubview:self.GFarrowImgView];
        
        [self.GFtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(GFWIDTH * 0.5 - 20);
            make.height.mas_equalTo(28);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.GFarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.GFcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.GFarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(GFWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(32);
        }];
    }
    return self;
}
- (void)setModel:(GFSetViewModel *)model{
    _model = model;
    self.GFtitleLbl.text = [NSString stringWithFormat:@"  %@  ",_model.GFtitle];
    CGSize size = [self.GFtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 28)];
    [self.GFtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GFtitleLbl layoutIfNeeded];
    if (_model.GFcontent.length) {
        self.GFcontentLbl.hidden = NO;
    self.GFcontentLbl.text = [NSString stringWithFormat:@"  %@  ",_model.GFcontent];
    size = [self.GFcontentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 32)];
    [self.GFcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GFcontentLbl layoutIfNeeded];
    }else{
        self.GFcontentLbl.hidden = YES;
    }
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)GFtitleLbl{
    if (!_GFtitleLbl) {
        _GFtitleLbl = [[UILabel alloc] init];
        _GFtitleLbl.textColor = [UIColor blackColor];
        _GFtitleLbl.font = [UIFont systemFontOfSize:18];
        _GFtitleLbl.backgroundColor = [UIColor systemGrayColor];
        _GFtitleLbl.layer.cornerRadius = 14.0f;
        _GFtitleLbl.layer.masksToBounds = YES;
    }
    return _GFtitleLbl;
}
- (UILabel *)GFcontentLbl{
    if (!_GFcontentLbl) {
        _GFcontentLbl = [[UILabel alloc] init];
        _GFcontentLbl.textColor = [UIColor blackColor];
        _GFcontentLbl.font = [UIFont boldSystemFontOfSize:22];
        _GFcontentLbl.backgroundColor = [UIColor systemGrayColor];
        _GFcontentLbl.layer.cornerRadius = 16.0f;
        _GFcontentLbl.layer.masksToBounds = YES;
    }
    return _GFcontentLbl;
}
- (UIImageView *)GFarrowImgView{
    if (!_GFarrowImgView) {
        _GFarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GF_arrow_right"]];
    }
    return _GFarrowImgView;
}
@end
