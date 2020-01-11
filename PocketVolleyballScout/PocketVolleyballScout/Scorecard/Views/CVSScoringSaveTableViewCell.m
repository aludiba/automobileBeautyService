//
//  CVSScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSScoringSaveTableViewCell.h"
#import "CVSScorecardViewModel.h"

@interface CVSScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *CVSSaveButton;//保存按钮
@end
@implementation CVSScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self CVSSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)CVSSetContentView{
    [self.contentView addSubview:self.CVSSaveButton];
    
    [self.CVSSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(110);
        make.top.equalTo(self.contentView).offset(5);
        make.trailing.equalTo(self.contentView).offset(-110);
        make.height.mas_equalTo(50);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
}
- (void)CVSSave:(UIButton *)sender{
    if (self.CVSScorecardSaveB) {
        self.CVSScorecardSaveB(self);
    }
}
- (void)setCVSModel:(CVSScorecardViewModel *)CVSModel{
    _CVSModel = CVSModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)CVSSaveButton{
    if (!_CVSSaveButton) {
        _CVSSaveButton = [[UIButton alloc] init];
        [_CVSSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_CVSSaveButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        _CVSSaveButton.backgroundColor = [UIColor systemBlueColor];
        _CVSSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        _CVSSaveButton.layer.cornerRadius = 8.0f;
        _CVSSaveButton.layer.masksToBounds = YES;
        _CVSSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CVSSaveButton addTarget:self action:@selector(CVSSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSSaveButton;
}
@end
