//
//  PVSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVSetTableViewCell.h"
#import "PVSetViewModel.h"
@interface PVSetTableViewCell()
@property(nonatomic, strong)UILabel *PVtitleLbl;
@property(nonatomic, strong)UILabel *PVcontentLbl;
@property(nonatomic, strong)UIImageView *PVarrowImgView;
@end
@implementation PVSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PVtitleLbl];
        [self.contentView addSubview:self.PVcontentLbl];
        [self.contentView addSubview:self.PVarrowImgView];
        
        [self.PVtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(PVWIDTH * 0.5 - 20);
            make.height.mas_equalTo(28);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.PVarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.PVcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.PVarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(PVWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(32);
        }];
    }
    return self;
}
- (void)setModel:(PVSetViewModel *)model{
    _model = model;
    self.PVtitleLbl.text = [NSString stringWithFormat:@"  %@  ",_model.PVtitle];
    CGSize size = [self.PVtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 28)];
    [self.PVtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVtitleLbl layoutIfNeeded];
    if (_model.PVcontent.length) {
        self.PVcontentLbl.hidden = NO;
    self.PVcontentLbl.text = [NSString stringWithFormat:@"  %@  ",_model.PVcontent];
    size = [self.PVcontentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 32)];
    [self.PVcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVcontentLbl layoutIfNeeded];
    }else{
        self.PVcontentLbl.hidden = YES;
    }
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)PVtitleLbl{
    if (!_PVtitleLbl) {
        _PVtitleLbl = [[UILabel alloc] init];
        _PVtitleLbl.textColor = [UIColor blackColor];
        _PVtitleLbl.font = [UIFont systemFontOfSize:18];
        _PVtitleLbl.backgroundColor = [UIColor systemGrayColor];
        _PVtitleLbl.layer.cornerRadius = 14.0f;
        _PVtitleLbl.layer.masksToBounds = YES;
    }
    return _PVtitleLbl;
}
- (UILabel *)PVcontentLbl{
    if (!_PVcontentLbl) {
        _PVcontentLbl = [[UILabel alloc] init];
        _PVcontentLbl.textColor = [UIColor blackColor];
        _PVcontentLbl.font = [UIFont boldSystemFontOfSize:22];
        _PVcontentLbl.backgroundColor = [UIColor systemGrayColor];
        _PVcontentLbl.layer.cornerRadius = 16.0f;
        _PVcontentLbl.layer.masksToBounds = YES;
    }
    return _PVcontentLbl;
}
- (UIImageView *)PVarrowImgView{
    if (!_PVarrowImgView) {
        _PVarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PV_arrow_right"]];
    }
    return _PVarrowImgView;
}
@end
