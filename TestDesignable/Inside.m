//
//  Inside.m
//  TestDesignable
//
//  Created by Marek Mościchowski on 28/09/15.
//  Copyright © 2015 Marek Mościchowski. All rights reserved.
//

#import "Inside.h"

@implementation Inside

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
  self = [super initWithCoder:aDecoder];
  if (self) {
    [[NSBundle bundleForClass:self.class] loadNibNamed:@"Inside" owner:self options:nil];
    self.inside = [[[NSBundle bundleForClass:self.class] loadNibNamed:@"Inside" owner:self options:nil] lastObject];

    self.inside.frame = self.bounds;
    self.inside.autoresizingMask = UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleWidth;
    [self addSubview:self.inside];
  }
  return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
  self = [super initWithFrame:frame];
  if (self) {
    [[NSBundle bundleForClass:self.class] loadNibNamed:@"Inside" owner:self options:nil];
    self.inside = [[[NSBundle bundleForClass:self.class] loadNibNamed:@"Inside" owner:self options:nil] lastObject];
    self.inside.frame = self.bounds;
    self.inside.autoresizingMask = UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleWidth;
    [self addSubview:self.inside];
  }
  return self;
}

@end
