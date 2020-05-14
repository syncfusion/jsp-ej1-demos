<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<div class="control">
		<ej:toolbar id="toolbarKeySupport">
			<ej:toolbar-contentTemplate>
				<ul>
                    <li id="Li5" title="STOP">
                        <div class="ToolbarItems Stop" ></div>
                    </li>
                    <li id="mediaback" title="Previous">
                        <div class="ToolbarItems Back" ></div>
                    </li>
                    <li id="previous" title="Preview">
                        <div class="ToolbarItems FastForward" ></div>
                    </li>
                    <li id="play" title="play">
                        <div class="ToolbarItems Play" ></div>
                    </li>
                    <li id="next" title="Review">
                        <div class="ToolbarItems FastForward1" ></div>
                    </li>
                    <li id="end" title="Next">
                        <div class="ToolbarItems Back1" ></div>
                    </li>
                    <li id="eject" title="Load/Eject">
                        <div class="ToolbarItems End" ></div>
                    </li>
                    <li id="PlayOnce" title="PlayOnce">
                        <div class="ToolbarItems PlayOnce" ></div>
                    </li>
                    <li id="RepeatAll" title="RepeatAll">
                        <div class="ToolbarItems RepeatAll" ></div>
                    </li>
                    <li id="playerSkew" title="Skew">
                        <div class="ToolbarItems playerSkew" ></div>
                    </li>
                </ul>
			</ej:toolbar-contentTemplate>
		</ej:toolbar>
	</div>
</div>

<div id="property-window" class="box wide">
     <div class="prop-grid keyboard">
        <div class="row">
            <div class="col-md-3">
                Alt + j
            </div>
            <div class="col-md-3">
                Focuses the control
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                UP
            </div>
            <div class="col-md-3">
                Navigates up and right.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Down
            </div>
            <div class="col-md-3">
                Navigates down and left.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Left
            </div>
            <div class="col-md-3">
                Navigates down and left.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Right
            </div>
            <div class="col-md-3">
                Navigates up and right.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Home
            </div>
            <div class="col-md-3">
                Navigates to the starting item.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                End
            </div>
            <div class="col-md-3">
                Navigates to the ending item.
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                Enter
            </div>
            <div class="col-md-3">
                Selects the focused item
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
        $(function () {
            $(document).on("keydown", function (e) {
                if (e.altKey && e.keyCode === 74) { 
                    $("#toolbarKeySupport").focus();
                }
            });
        });
</script>

<style>
.cols-sample-area
{
    width: 400px;
    margin: 0 auto;
    float: none;
}
.darktheme .cols-sample-area .e-tooltxt .ToolbarItems {
    background-image: url('Content/images/toolbar/playerd.png');
}

.cols-sample-area .e-tooltxt .ToolbarItems {
    display: block;
    background-image: url('Content/images/toolbar/playerl.png');
    height: 32px;
    width: 28px;
    background-repeat: no-repeat;
    list-style: none outside none;
}

.e-tooltxt:hover .ToolbarItems, .darktheme .cols-sample-area .e-tooltxt:hover .ToolbarItems {
    background-image: url('Content/images/toolbar/playerh.png');
}


.ToolbarItems.Back {
    background-position: -2px 0px;
}

.ToolbarItems.End {
    background-position: -44px 0px;
}

.ToolbarItems.FastForward {
    background-position: -86px 0px;
}

.ToolbarItems.Pause {
    background-position: -128px 0px;
}

.ToolbarItems.Play {
    background-position: -170px 0px;
}

.ToolbarItems.Stop {
    background-position: -212px 0px;
}

.ToolbarItems.PlayOnce {
    background-position: -254px 0px;
}

.ToolbarItems.RepeatAll {
    background-position: -296px 0px;
}

.ToolbarItems.playerSkew {
    background-position: -338px 0px;
}

.ToolbarItems.Back1 {
    background-position: -380px 0px;
}

.ToolbarItems.FastForward1 {
    background-position: -422px 0px;
}

</style>
