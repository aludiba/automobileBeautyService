//
//  CBSScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CBSScoringSaveTableViewCell.h"
#import "CBSScorecardViewModel.h"

@interface CBSScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *CBSSaveButton;//保存按钮
@end
@implementation CBSScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self CBSSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)CBSSetContentView{
    [self.contentView addSubview:self.CBSSaveButton];
    
    [self.CBSSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(120);
        make.top.equalTo(self.contentView).offset(20);
        make.trailing.equalTo(self.contentView).offset(-120);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
}
- (void)CBSSave:(UIButton *)sender{
    if (self.CBSScorecardSaveB) {
        self.CBSScorecardSaveB(self);
    }
}
- (void)setCBSModel:(CBSScorecardViewModel *)CBSModel{
    _CBSModel = CBSModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)CBSSaveButton{
    if (!_CBSSaveButton) {
        _CBSSaveButton = [[UIButton alloc] init];
        [_CBSSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_CBSSaveButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        _CBSSaveButton.backgroundColor = [UIColor systemPurpleColor];
        _CBSSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _CBSSaveButton.layer.cornerRadius = 8.0f;
        _CBSSaveButton.layer.masksToBounds = YES;
        _CBSSaveButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CBSSaveButton.layer.borderWidth = 2.0f;
        _CBSSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CBSSaveButton addTarget:self action:@selector(CBSSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSSaveButton;
}
@end
