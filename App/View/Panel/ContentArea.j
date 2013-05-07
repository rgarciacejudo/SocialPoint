

@import <AppKit/CPView.j>


@implementation ContentArea : CPView
{
	
}

- (id) initWithFrame(CGRect):aFrame
{

	self = [super initWithFrame:aFrame];
    if(self){
    	[self setBackgroundColor:[CPColor lightGrayColor]];
    	// This view will grow in both height an width.
    	[self setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    }
    return self;
}

@end
