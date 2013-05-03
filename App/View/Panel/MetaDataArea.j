

@import <AppKit/CPView.j>


@implementation MetaDataArea : CPView
{
    
}

- (id) initWithNavegationArea():navigationArea
{
    self = [[CPView alloc] initWithFrame:CGRectMake(0.0, CGRectGetMaxY([navigationArea frame]), 200.0, 200.0)];
    
    if(self){
        [self setBackgroundColor:[CPColor greenColor]];
        // This view will stay the same size in both directions, and fixed to the lower left corner.
        [self setAutoresizingMask:CPViewMinYMargin | CPViewMaxXMargin];
    }

    return self;
}

@end
