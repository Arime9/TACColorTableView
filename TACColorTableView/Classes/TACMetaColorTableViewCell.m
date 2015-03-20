//
//  TACMetaColorTableViewCell.m
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACMetaColorTableViewCell.h"

@implementation TACMetaColorTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        // colorTableView
        _colorTableView = [[TACColorTableView alloc] initWithFrame:self.frame style:UITableViewStylePlain];
        [self.contentView addSubview:_colorTableView];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (CGRect)frame {
    return CGRectMake(0.0, 0.0, 320.f, 64.f);
}

@end
