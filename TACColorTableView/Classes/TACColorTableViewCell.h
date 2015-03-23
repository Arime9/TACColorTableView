//
//  TACColorTableViewCell.h
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TACColorData;

@interface TACColorTableViewCell : UITableViewCell

+ (UINib *)nib;
+ (NSString *)reuseIdentifier;

@property (nonatomic, weak) IBOutlet UIView *subContentView;
@property (nonatomic, strong) TACColorData *data;

@end
