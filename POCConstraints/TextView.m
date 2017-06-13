//
//  TextView.m
//  POCConstraints
//
//  Created by Bruno Medeiros Rafael on 12/06/17.
//  Copyright © 2017 Bruno Medeiros Rafael. All rights reserved.
//

#import "TextView.h"

@implementation TextView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)init {
    self = [super init];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"textView" owner:self options:nil]firstObject];
    }
    return self;
}


@end
