

@import <AppKit/CPView.j>


@implementation MetaDataArea : CPView
{
    
}

- (id) init
{
    self = [[CPView alloc] initWithFrame:CGRectMake(0.0, 0.0, 150.0, 200.0)];
    
    if(self){
        [self setBackgroundColor:[CPColor darkGrayColor]];
        // This view will stay the same size in both directions, and fixed to the lower left corner.
        //[self setAutoresizingMask:CPViewMinYMargin | CPViewMaxXMargin];
    }

    return self;
}

@end