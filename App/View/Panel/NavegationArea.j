

@import <AppKit/CPView.j>


@implementation NavegationArea : CPView
{
	
}

- (id) initWithContent():contentView
{
	self = [[CPView alloc] initWithFrame:CGRectMake(0.0, 150.0, 200.0, CGRectGetHeight([contentView bounds]) - 350.0)];
    
    if(self){

    	[self setBackgroundColor:[CPColor redColor]];
    	// This view will grow in height, but stay fixed width attached to the left side of the screen.
    	[self setAutoresizingMask:CPViewHeightSizable | CPViewMaxXMargin];
    }

    return self;
       
}

@end
