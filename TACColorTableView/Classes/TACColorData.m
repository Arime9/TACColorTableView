//
//  TACColorData.h
//  TACColorTableView
//
//  Created by masato_arai on 2015/03/20.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACColorData.h"

@implementation TACColorData

+ (instancetype)dataWithColor:(UIColor *)color colorIndex:(NSInteger)colorIndex {
    return [[TACColorData alloc] initWithColor:color colorIndex:colorIndex];
}

- (instancetype)initWithColor:(UIColor *)color colorIndex:(NSInteger)colorIndex {
    self = [super init];
    if (self) {
        _color = color;
        _colorIndex = colorIndex;
    }
    return self;
}

@end
