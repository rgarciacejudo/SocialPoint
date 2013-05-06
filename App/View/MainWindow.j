


@import <AppKit/CPWindow.j>
@import "Panel/MetaDataArea.j"
@import "Panel/NavegationArea.j"
@import "Panel/ContentArea.j"
@import "Panel/MainToolBar.j"


@implementation MainWindow : CPWindow
{
	
}

- (id) init
{
	self = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask];
    if(self){

        contentView = [self contentView];
        var contentNavegationSplit = [[CPSplitView alloc] 
            initWithFrame:CGRectMake(0.0,100.0,CGRectGetWidth([contentView bounds]),CGRectGetHeight([contentView bounds])-100.0)];
        
        [contentNavegationSplit setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];

        var navegationMetaSplit = [[CPSplitView alloc] 
            initWithFrame:CGRectMake(0.0,0.0,200.0,CGRectGetHeight([contentView bounds])-100.0)];

        var navegationArea = [[NavegationArea alloc] initWithContent:contentView];
        var metaDataArea = [[MetaDataArea alloc] init];
        var contentArea = [[ContentArea alloc] initWithContent:contentView];

        [navegationMetaSplit setVertical:NO];
        [navegationMetaSplit addSubview:navegationArea];
        [navegationMetaSplit addSubview:metaDataArea];

        [contentNavegationSplit addSubview:navegationMetaSplit];
        [contentNavegationSplit addSubview:contentArea];

        var mainToolBar = [[MainToolBar alloc] initWithContent:contentView];
        

        [contentView addSubview:mainToolBar];
        CPLog.info("asjdaksdj");
        [contentView addSubview:contentNavegationSplit];


    }
    return self;
       
}

@end
