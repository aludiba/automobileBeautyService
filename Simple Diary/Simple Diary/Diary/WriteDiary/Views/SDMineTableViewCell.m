//
//  SDMineTableViewCell.m
//  Simple Diary
//
//  Created by 褚红彪 on 2019/8/8.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDMineTableViewCell.h"
#import "SDMineModel.h"
@interface SDMineTableViewCell()
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UILabel *contentLbl;
@property(nonatomic, strong)UIImageView *arrowImgView;
@end
@implementation SDMineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentLbl];
        [self.contentView addSubview:self.arrowImgView];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.contentView).offset(15);
            make.trailing.equalTo(self.contentLbl.mas_leading).offset(-5);
            make.height.mas_equalTo(20);
        }];
        [self.arrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.arrowImgView.mas_leading).offset(-10);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(90);
            make.height.mas_equalTo(20);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = SDH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.titleLbl.mas_bottom).offset(14);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(SDMineModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    if (_model.type == SDMineCellTypeLoginOut) {
        self.arrowImgView.hidden = YES;
    }else{
        self.arrowImgView.hidden = NO;
    }
    if (_model.type == SDMineCellTypeContent) {
        self.contentLbl.text = _model.content;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.font = [UIFont systemFontOfSize:17];
        _titleLbl.textColor = [UIColor blackColor];
    }
    return _titleLbl;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.font = [UIFont systemFontOfSize:17];
        _contentLbl.textColor = [UIColor grayColor];
        [_contentLbl sizeToFit];
        _contentLbl.textAlignment = NSTextAlignmentRight;
    }
    return _contentLbl;
}
- (UIImageView *)arrowImgView{
    if (!_arrowImgView) {
        _arrowImgView = [[UIImageView alloc] init];
        _arrowImgView.image = [UIImage imageNamed:@"btc_check"];
    }
    return _arrowImgView;
}
@end
