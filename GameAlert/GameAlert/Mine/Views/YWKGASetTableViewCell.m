//
//  YWKGASetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGASetTableViewCell.h"
#import "YWKGASetViewModel.h"
@interface YWKGASetTableViewCell()
@property(nonatomic, strong)UILabel *YWKGAtitleLbl;
@property(nonatomic, strong)UILabel *YWKGAcontentLbl;
@property(nonatomic, strong)UIImageView *YWKGAarrowImgView;
@end
@implementation YWKGASetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.YWKGAtitleLbl];
        [self.contentView addSubview:self.YWKGAcontentLbl];
        [self.contentView addSubview:self.YWKGAarrowImgView];
        
        [self.YWKGAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(25);
            make.width.mas_equalTo(YWKGAWIDTH * 0.5 - 20);
            make.height.mas_equalTo(25);
            make.bottom.equalTo(self.contentView).offset(-25);
        }];
        [self.YWKGAarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.YWKGAcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.YWKGAarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(YWKGAWIDTH * 0.5 - 5 - 22 - 16);
            make.height.mas_equalTo(25);
        }];
    }
    return self;
}
- (void)setModel:(YWKGASetViewModel *)model{
    _model = model;
    self.YWKGAtitleLbl.text = _model.YWKGAtitle;
    self.YWKGAcontentLbl.text = _model.YWKGAcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)YWKGAtitleLbl{
    if (!_YWKGAtitleLbl) {
        _YWKGAtitleLbl = [[UILabel alloc] init];
        _YWKGAtitleLbl.textColor = [UIColor blackColor];
        _YWKGAtitleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _YWKGAtitleLbl;
}
- (UILabel *)YWKGAcontentLbl{
    if (!_YWKGAcontentLbl) {
        _YWKGAcontentLbl = [[UILabel alloc] init];
        _YWKGAcontentLbl.textAlignment = NSTextAlignmentRight;
        _YWKGAcontentLbl.textColor = [UIColor blackColor];
        _YWKGAcontentLbl.font = [UIFont boldSystemFontOfSize:22];
    }
    return _YWKGAcontentLbl;
}
- (UIImageView *)YWKGAarrowImgView{
    if (!_YWKGAarrowImgView) {
        _YWKGAarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"YWKGA_arrow_right"]];
    }
    return _YWKGAarrowImgView;
}
@end
