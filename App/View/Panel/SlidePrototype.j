

@implementation SlidePrototype : CPView
{
    // ver que onda esto sera un graphics o algo
    CPImageView _imageView;
}

- (void)setRepresentedObject:(id)anObject
{
    if (!_imageView)
    {
        var frame = CGRectInset([self bounds], 5.0, 5.0);

        _imageView = [[CPImageView alloc] initWithFrame:frame];

        [_imageView setImageScaling:CPScaleProportionally];
        [_imageView setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];

        [self addSubview:_imageView];
    }

    [_imageView setImage:anObject];
}

- (void)setSelected:(BOOL)isSelected
{
    // TODO notify change
    [self setBackgroundColor:isSelected ? [CPColor grayColor] : nil];
}

@end