var toolbarObj, listObj, popupObj, isInitialLoading = true;
var autocompleteData = [], controlList;
window.isMobile = window.innerWidth <= 480;
window.UTMLink = '';
var menuData = {
    "Grids": {
        "Grid": [{ text: "Default", query: "default" }, { text: "RemoteData", query: "RemoteData" }, { text: "Sorting", query: "Sorting" }, { text: "Filtering", query: "Filtering" },
                 { text: "Grouping", query: "Grouping" },{ text: "Editing", query: "Editing" }, { text: "Scrolling", query: "Scrolling" }, { text: "Summary", query: "Summary" }, { text: "ContextMenu", query: "ContextMenu" }
                 ],
                 "Spreadsheet": [{ text: "Default Functionalities", query: "default" }, { text: "Cell Data Binding", query: "celldatabinding" }],
                 "TreeGrid": [{ text: "Editing", query: "default" },
        	         { text: "Events", query: "events" },
        	         { text: "Column Template", query: "columntemplate" }]
          
    },
    "Data Visualization": {
    	"Bulletgraph":[
         	{text: "Default", query:"default"},
         	{text: "Local Data", query:"local"}
         ],
    	"Chart": [
        	{ text: "Line", query: "default" },
        	{ text: "Column", query: "column" },
        	{ text: "Pie", query: "pie" },
        	{ text: "Bar", query: "bar" },
        	{ text: "Polar", query: "polar" },
        	{ text: "3D Column", query: "3dColumn" },
        	{ text: "3D Pie", query: "3dPie" },
        	{ text: "Pyramid", query: "pyramid" },
        	{ text: "Combination", query: "combination" },
        	{ text: "Zooming", query: "zooming" },
        	{ text: "Bubble", query: "bubble" },
        	{ text: "Candle", query: "candle" },
        	{ text: "Live", query: "live" }
        	
        ],
        "CircularGauge":[
        	{text: "Default", query:"default"},
        	{text: "Pointer", query:"pointer"}
        ],
        "DigitalGauge":[
        	{text: "Default", query:"default"}
        ],
        "Diagram": [
		  { text: "Default", query: "default" },
          { text: "Hierarchical Layout", query: "hierarchicallayout" },
          { text: "Organization Chart", query: "organizationchart" },
          { text: "Radial Tree", query: "radialtree" },
          { text: "Overview", query: "overview" }
        ],
		"Gantt": [
			{ text: "Editing", query: "ganttEditing" },
			{ text: "Events", query: "ganttEvent" },
			{ text: "Tooltip Template", query: "tooltipTemplate" }
		],
        "LinearGauge":[
        	{text: "Default", query:"default"}
        ],
        "Maps":[
        	{text: "Default", query:"default"}
        ],
        "RangeNavigator":[
        	{text: "Datetime", query:"default"},
        	{text: "Numeric", query:"numeric"}
        ],
		"Kanban Board": [
		{ text: "Default", query: "default" },
		{ text: "Swimlane", query: "swimlane" },
		{ text: "Customization", query: "customization" },
		{ text: "Dialog", query: "dialog" },
		{ text: "Filtering", query: "filtering" },
		{ text: "ContextMenu", query: "contextMenu" },
		{ text: "CardTemplate", query: "cardTemplate" },
		{ text: "Workflow", query: "workflow" }
		],
		"Schedule": [
			{ text: "Default", query: "default" },
			{ text: "Multiple Resources", query: "multipleresource" },
			{ text: "Resource Grouping", query: "resourcegrouping" },
			{ text: "Template", query: "template" },
			{ text: "Localization", query: "localization" },
			{ text: "Categorize", query: "categorize" }
		],
         "SparkLine":[
        	{text: "Default", query:"default"}
        ],
        "SunburstChart":[
        	{text: "Default", query:"sunburst"}
        ],
		"TagCloud": [
			{ text: "Default", query: "default" },
			{ text: "RTL", query: "rtl" }
		],
        "TreeMap":[
        	{text: "Default", query:"default"},
        	{text: "Drill Down", query:"drilldown"}
        ],
		"HeatMap": [
          { text: "Default", query: "default" },
          { text: "Table Binding", query: "tablebinding" },
          { text: "Legend", query: "legend" }
        ],
        "Barcode": [
                    {text:"Default",query:"default"},
                    {text:"Datamatrix",query:"datamatrix"},
                    {text:"Code39",query:"code39"},
                    {text:"Code39Extended",query:"code39Extended"},
                    {text:"Code11",query:"code11"},
                    {text:"Codabar",query:"codabar"},
                    {text:"Code32",query:"code32"},
                    {text:"Code93",query:"code93"},
                    {text:"Code93Extended",query:"code93Extended"},
                    {text:"Code128A",query:"code128A"},
                    {text:"Code128B",query:"code128B"},
                    {text:"Code128C",query:"code128C"}
                    ]    
    },
    "Navigation": {
        "Button": [{ text: "Default", query: "default" }, { text: "CheckBox", query: "checkbox" }, { text: "Events", query: "events" }, { text: "ToggleButton", query: "togglebutton" }, { text: "RadioButton", query: "radiobutton" }, { text: "SplitButton", query: "splitbutton" }, { text: "GroupButton", query: "groupbutton" }],
        "Accordion": [{ text: "Default", query: "default" }, {text: "Icons", query: "icons" },{text: "Multiple Open", query: "multipleopen" },{text: "Open On Hover", query: "openonhover" },{text: "Nested Accordion", query: "nestedaccordion" },{text: "RTL", query: "rtl" },{text: "Keyboard Navigation", query: "keyboard" }],
		"Treeview": [{text: "Default", query: "default" }, 
					 {text: "Icons", query: "icons" },
					 {text: "Checkboxes", query: "checkboxes" },
					 {text: "Drag and Drop", query: "draganddrop" },
					 {text: "Local Data", query: "localdatabinding" },
					 //{text: "Remote Data", query: "remotedatabinding" },
					 {text: "Multi-Selection", query: "multiselection" },
					 {text: "Load On Demand", query: "loadondemand" },
					 {text: "Template", query: "template" },
					 {text: "Events", query: "events" }],
		"Toolbar":[{text:"Default",query:"default"},{text:"Local data binding",query:"local"},{text:"Orientation",query:"orientation"},{text:"Template",query:"template"},{text:"RTL",query:"rtl"},{text:"Keyboard Interaction",query:"keyboard"}],
		"Ribbon":[{text:"Default",query:"default"},{text:"QuickAccessToolbar",query:"quickaccesstoolbar"},{text:"Resize",query:"resize"}],
		"Tab":[{text:"Default",query:"default"},{text:"Icons",query:"images"},{text:"Header orientation",query:"header"},{text:"Close Button",query:"close"},{text:"Other Widgets",query:"other"},{text:"State Maintenance",query:"state"},{text:"Scrollable Tab",query:"scroll"},{text:"RTL",query:"rtl"},{text:"Keyboard Interaction",query:"keyboard"}],
		"Menu":[{text:"Default",query:"default"},{text:"Local data Binding ",query:"local"},{text:"Template",query:"template"},{text:"Open Direction",query:"direction"},{text:"Vertical Menu",query:"vertical"},{text:"Context Menu",query:"context"},{text:"Center Menu",query:"center"},{text:"RTL",query:"rtl"},{text:"Keyboard Interaction",query:"keyboard"}],
		"ListBox": [{ text: "Default", query: "default"},{ text: "Checkbox", query: "checkbox"},{ text: "Multiselect", query: "multiselect"},{ text: "Drag and Drop", query: "draganddrop"},{ text: "Reordering", query: "reorder"}],
		"NavigationDrawer":[{text:"Default",query:"default"}],
    	"RadialMenu": [{ text: "Default", query: "default" }],
    	"Rotator": [{ text: "Default", query: "default" }, { text: "Thumbnail", query: "thumbnail" }],
    	"Scroller": [{ text: "Default", query: "default" }, { text: "API's", query: "methods" }, { text: "RTL", query: "rtl" }]

    },
    "Business Intelligence": {
        "PivotGrid": [{ text: "Relational", query: "default" }, { text: "OLAP", query: "olap" }],
        "PivotChart": [{ text: "Relational", query: "default" }, { text: "OLAP", query: "olap" }],
		"PivotGauge": [{text: "Relational", query: "default" }, { text: "OLAP", query: "olap" }], 			 
		"PivotTreeMap": [{ text: "OLAP", query: "default"}]       
    },
    "Layout": {
    	"Tooltip": [{ text: "Default", query: "default" },{text:"Position",query:"position"},{text:"Forms",query:"forms"},{text:"Template",query:"template"},{text:"Ajax Content",query:"ajaxcontent"},{text:"Animation Effects",query:"animation"}],
        "Dialog":[{text:"Default",query:"default"},{text:"Modal Dialog",query:"ModalDialog"},{text:"RTL",query:"RTL"}],
		"Splitter":[{text:"Default",query:"default"},{text:"Orientation",query:"Orientation"}],
		"ListView": [{ text: "Default", query: "default" },{ text: "Checklist", query: "checklist" }],
		"TileView":[{text:"Default",query:"default"}]
           
    },
    "Editors": {       
        "DatePicker": [{ text: "Default", query: "default" }, { text: "Display Inline", query: "displayinline" }, { text: "Events", query: "events" }],
        "TimePicker": [{ text: "Default", query: "default" }, { text: "Events", query: "events" },{ text: "Disable Time Range", query: "disabletimerange" }, { text: "RTL", query: "rtl" }],
        "DateTimePicker": [{ text: "Default", query: "default" }, { text: "Events", query: "events" }, { text: "Drilldown Support", query: "drilldownsupport" }],
        "Textboxes": [{ text: "Default", query: "default" },{ text: "Events", query: "events" }, { text: "RTL", query: "rtl" }],
        "Slider": [{ text: "Default", query: "default" }, { text: "RangeSlider", query: "rangeslider" }, { text: "VerticalSlider", query: "verticalslider" }, { text: "Events", query: "events" }, { text: "RTL", query: "rtl" },{ text: "ButtonSupport", query: "buttonsupport" }],
        "DropDownList": [{ text: "Default", query: "default" }],
        "RTE": [{ text: "Default", query: "default" }, { text: "RTL", query: "rtl" }],
        "ColorPicker": [{ text: "Default", query: "default" },{ text: "Custom Palatte", query: "custompalette" },{ text: "Events", query: "events" },{ text: "Color Palatte", query: "colorpalette" }],
        "Rating": [{ text: "Default", query: "default" }, { text: "Precision", query: "precision" }, { text: "Orientation", query: "orientation" }],
		"Autocomplete":[{text: "Default", query: "default" },{text: "Multiple Values", query: "multivalues"},{text: "Auto Fill", query: "autofill"},{text: "API's", query: "api"}, {text: "RTL", query: "rtl"}],
        "RadialSlider": [{ text: "Default", query: "default" },{text: "Methods", query: "api"}],
		"Signature": [{ text: "Default", query: "default" }]
    },
    "Notification": {
        "ProgressBar": [{ text: "Default", query: "default" }, { text: "RTL", query: "rtl" },{ text: "Events", query: "events" }],
        "WaitingPopup": [{ text: "Default", query: "default" }, { text: "Template", query: "template" }]
          
    }  
}
var newArray = [];
$.each(menuData, function (item, value) {
    newArray.push({ "class": "tbutton", text: item, samples: value, id: item.replace(" ", "") });
});
onSelectSearchItem = function (e) {
    this.clearText();
    if (window.isMobile) $("#sb_search_wrapper").width(0);
    $("#" + e.item.category.id).click();
    _navigateLeft();
    listObj.selectItem($("#control_list li[data-childid='child" + e.item.control.replace(" ", "").replace("%20", "") + "']").index());
    var href = e.item.control + "/" + e.item.sample.toLowerCase() + ".jsp";
    listObj.selectItem($("#control_list li[data-href='" + href + "']").index(), 'child' + e.item.control.replace(" ", "").replace("%20", ""));
};

window.themeData = [{ id: 1, text: "", parentId: null, spriteCssClass: "e-icon" },
{ id: "flatazure", text: "Flat-Azure", parentId: 1, spriteCssClass: "SB-theme SB-flat-azure" },
{ id: "flatazuredark", text: "Flat-Azure-Dark", parentId: 1, spriteCssClass: "SB-theme SB-flat-azure-dark" },
{ id: "lime", text: "Flat-Lime", parentId: 1, spriteCssClass: "SB-theme SB-flat-lime" },
{ id: "limedark", text: "Flat-Lime-Dark", parentId: 1, spriteCssClass: "SB-theme SB-flat-lime-dark" },
{ id: "saffron", text: "Flat-Saffron", parentId: 1, spriteCssClass: "SB-theme SB-flat-saffron" },
{ id: "saffrondark", text: "Flat-Saffron-Dark", parentId: 1, spriteCssClass: "SB-theme SB-flat-saffron-dark" },
{ id: "gradientazure", text: "Gradient-Azure", parentId: 1, spriteCssClass: "SB-theme SB-gradient-azure" },
{ id: "gradientazuredark", text: "Gradient-Azure-Dark", parentId: 1, spriteCssClass: "SB-theme SB-gradient-azure-dark" },
{ id: "gradientlime", text: "Gradient-Lime", parentId: 1, spriteCssClass: "SB-theme SB-gradient-lime" },
{ id: "gradientlimedark", text: "Gradient-Lime-Dark", parentId: 1, spriteCssClass: "SB-theme SB-gradient-lime-dark" },
{ id: "gradientsaffron", text: "Gradient-Saffron", parentId: 1, spriteCssClass: "SB-theme SB-gradient-saffron" },
{ id: "gradientsaffrondark", text: "Gradient-Saffron-Dark", parentId: 1, spriteCssClass: "SB-theme SB-gradient-saffron-dark" },
{ id: "bootstrap", text: "Bootstrap", parentId: 1, spriteCssClass: "SB-theme SB-bootstrap" },
{ id: "high-contrast-01", text: "High-Contrast-01", parentId: 1, spriteCssClass: "SB-theme SB-high-contrast-01" },
{ id: "high-contrast-02", text: "High-Contrast-02", parentId: 1, spriteCssClass: "SB-theme SB-high-contrast-02" },
{ id: "material", text: "Material", parentId: 1, spriteCssClass: "SB-theme SB-material" },
{ id: "office-365", text: "Office-365", parentId: 1, spriteCssClass: "SB-theme SB-office365" }

];

var themes = {
    "flatazure": "Content/ejthemes/default-theme/ej.web.all.min.css",
    "flatazuredark": "Content/ejthemes/flat-azure-dark/ej.web.all.min.css",
    "lime": "Content/ejthemes/flat-lime/ej.web.all.min.css",
    "limedark": "Content/ejthemes/flat-lime-dark/ej.web.all.min.css",
    "saffron": "Content/ejthemes/flat-saffron/ej.web.all.min.css",
    "saffrondark": "Content/ejthemes/flat-saffron-dark/ej.web.all.min.css",
    "gradientazure": "Content/ejthemes/gradient-azure/ej.web.all.min.css",
    "gradientazuredark": "Content/ejthemes/gradient-azure-dark/ej.web.all.min.css",
    "gradientlime": "Content/ejthemes/gradient-lime/ej.web.all.min.css",
    "gradientlimedark": "Content/ejthemes/gradient-lime-dark/ej.web.all.min.css",
    "gradientsaffron": "Content/ejthemes/gradient-saffron/ej.web.all.min.css",
    "gradientsaffrondark": "Content/ejthemes/gradient-saffron-dark/ej.web.all.min.css",
    "bootstrap": "Content/ejthemes/bootstrap-theme/ej.web.all.min.css",
    "high-contrast-01": "Content/ejthemes/high-contrast-01/ej.web.all.min.css",
    "high-contrast-02": "Content/ejthemes/high-contrast-02/ej.web.all.min.css",
    "material": "Content/ejthemes/material/ej.web.all.min.css",
    "office-365": "Content/ejthemes/office-365/ej.web.all.min.css"
};
function updateLinkTag(state) {
    var links = $(document.head || document.getElementsByTagName('head')[0]).find("link");
    for (var i = 0; i < links.length; i++) {
        if (links[i].href.indexOf("ej.web.all.min.css") != -1 && (window.theme !=='material' || state))
            links[i].href = themes[window.theme];
    }
}

function getThemeVar() {
    window.theme.indexOf('dark') != -1 || window.theme.indexOf("high-contrast") != -1 ? window.themevarient = "dark": window.themevarient = 'light';
    return window.themevarient;
}
function replacebg(enable) {
    $("body").removeAttr("class");
    if (enable == "dark")
        $("body").addClass("darktheme");
    else
        $("body").removeClass("darktheme");
    if (window.theme.indexOf("azure") !== -1) window.themecolor = "azure";
    else if (window.theme.indexOf("lime") !== -1) window.themecolor = "lime";
    else if (window.theme.indexOf("saffron") !== -1) window.themecolor = "saffron";
    else if (window.theme.indexOf("office-365") !== -1) window.themecolor = "office-365";
    else if (window.theme.indexOf("material") !== -1) window.themecolor = "material";
    else if (window.theme.indexOf("high-contrast-02") !== -1) window.themecolor = "high-contrast-02";
    else if (window.theme.indexOf("high-contrast-01") !== -1) window.themecolor = "high-contrast-01";
    else if (window.theme.indexOf("bootstrap") !== -1) window.themecolor = "bootstrap";

    $("body").addClass(window.themecolor);
}
function themebtnClick(args) {
    isPopupOpened = $(args.element).hasClass("e-haschild");
    if (args.event) args.event.stopPropagation();
    if (args.ID == 1) {
        var $btnelement = $("#themebutton");
        var pos = $btnelement.offset();
        var left = $btnelement.width() - $(".e-custom-theme .e-horizontal .e-list>ul").width();
        $(".e-custom-theme .e-horizontal .e-list>ul").css('left', left);
    } else {
        this.element.find('li.e-active').removeClass('e-active');        
    window.theme = args.ID;
    window.localStorage.setItem("window.theme",window.theme)
    updateLinkTag(true);    
    $(args.element).addClass("e-active");
    window.themevarient = getThemeVar(window.theme);    
    replacebg(window.themevarient);
    }

    $("#themebutton >li >a > .e-icon:first").addClass("bootstrap");
    resizeMenu();
    setTimeout(function () {
        refreshSlider();
    }, 500)
}

function refreshSlider() {
    var slider = $(".cols-sample-area").find(".e-slider.e-js");
    if (slider.length) {
        for (var i = 0; i < slider.length; i++) {
            var sliderObj = $(slider[i]).data("ejSlider");
            if (sliderObj.model.showScale && !sliderObj.model.showButtons) {
                sliderObj._destroyScale();
                sliderObj._renderScale(true);
            }
            if (sliderObj.model.showButtons) {
                sliderObj.option("showButtons", false);
                sliderObj.option("showButtons", true);
            }
        }
    }
}

function samplelisthide() {
    if ($(window).width() < 981) {
        if (window.isTransitionSupported) $('.accordion-panel').css({ left: '-250px' });
        else $(".accordion-panel").animate({ "left": "-250px" }, 350);
        $('.control-panel.cols-content-fluid').addClass('center-flow');
    }
    else {
        if (window.isTransitionSupported) $('.accordion-panel').css({ left: '0px' });
        else $(".accordion-panel").animate({ "left": "0px" }, 350);
    }
}

initiateSample = function () {
    var UTMLink = '?utm_medium=listing';
    if (window.location.hash != "") {
        var arr = window.location.hash.replace("#", "").split("/");
        window.currentCategory = arr[0].replace(" ", "").replace("%20", "");
        window.currentControl = arr[1];
        window.UTMLink = arr[2].indexOf(UTMLink) > 0 ? UTMLink : '';
        window.currentSample = arr[2].replace(UTMLink,'');
        $("#" + window.currentCategory).click();
    }
    else
        $(toolbarObj.element.find("#Grids")).click();
}
function initControls() {
    var firstobj = newArray[0].samples, lastObj = newArray[newArray.length - 1].samples; window.samples = {};
    if (ej.browserInfo().name == "msie" && ej.browserInfo().version == "8.0") {
        if (typeof Object.getPrototypeOf !== "function")
            Object.getPrototypeOf = "".__proto__ === String.prototype
            ? function (object) {
                return object.__proto__;
            }
            : function (object) {
                // May break if the constructor has been tampered with
                return object.constructor.prototype;
            };
        if (!Object.keys) {
            Object.keys = function (obj) {
                var keys = [];

                for (var i in obj) {
                    if (obj.hasOwnProperty(i)) {
                        keys.push(i);
                    }
                }

                return keys;
            };
        }
    }
    window.samples["firstControl"] = Object.keys(firstobj)[0];
    window.samples["firstSample"] = firstobj[window.samples.firstControl][0].query;
    window.samples["lastControl"] = Object.keys(lastObj)[Object.keys(lastObj).length - 1];
    window.samples["lastSample"] = lastObj[window.samples.lastControl][lastObj[window.samples.lastControl].length - 1].query;
    //$("#mainTab").ejTab({ heightAdjustMode: "fill", selectedItemIndex: 1 });
    if (ej.browserInfo().name == "msie" && ej.browserInfo().version == "8.0")
        for (var category = 0; category < newArray.length; category++) {
        var btn_temp = $("#btn_template").html();
        btn_temp = $(btn_temp).find('button').attr("id", newArray[category].id).attr("class", newArray[category]["class"]).text(newArray[category].text);
        document.getElementById("categories").innerHTML += (btn_temp[0].outerHTML);
        }
    else
    $("#categories").append($("#btn_template").render(newArray));
    $("#categories li").wrap("<ul></ul>");
    $(".tbutton").ejButton({ click: "populateListview" });
    $("#categories").ejToolbar({ isResponsive: true, width: "100%" ,cssClass:"gradient-saffron"});
    toolbarObj = $("#categories").data("ejToolbar");
    $(".nav_btn").ejButton({
        size: "mini",
        cssClass: "metroblue",
        contentType: "imageonly",
    });
    $("#sb_previous").ejButton({
        prefixIcon: "e-icon e-rarrowleft-2x"
    });
    $("#sb_next").ejButton({
        prefixIcon: "e-icon e-rarrowright-2x"
    });
    $("#scrollTop").ejButton({ contentType: "imageOnly", prefixIcon: "e-icon chevron-up_01" });
    $("#sampleArea").ejWaitingPopup({ template: $("#sbwaitingTemplate") });
    popupObj = $("#sampleArea").data("ejWaitingPopup");

    $("#themebutton").ejMenu({
        fields: { dataSource: themeData },
        openOnClick: true,
        width: 45,
        cssClass: "e-custom-theme",
        click: "themebtnClick",
        isResponsive: false
    });
    Menu_obj = $("#themebutton").data("ejMenu");
    resizeMenu = function () {
        var resheader, menu = window.innerWidth < 981 ? $("#themebutton ul") : $("#themebutton ul");
        menu.css("overflow-y", "scroll");
        var height_1 = (window.innerHeight || document.documentElement.clientHeight)- $(".header").outerHeight();
        height_1 > 520 ? menu.height(height_1 - 20) : menu.height(height_1 - $(".header").outerHeight() - 20);
        window.outerWidth <= 480 && menu.height(300);
    }
	$("#themebutton >li >a > .e-icon:first").addClass("bootstrap");
    $("#sb_search").ejAutocomplete({
        dataSource: autocompleteData, fields: { text: "control", key: "index" },
        watermarkText: "Search here",
        showPopupButton: false,
        filterType: "contains",
        width: "208px",
        popupHeight: "180px",
        popupWidth: "300px",
        template: '<span class="control_name ">${control}</span> <span class="control_samplename">${sample}</span>',
        select: "onSelectSearchItem",

    });
    //$("#scrollcontainer").ejScroller({ height: "80%" });
    if (window.isMobile) $("#sb_search_wrapper").addClass("closed").width(0);

    bindEvents();
    $("#mainTab").css("visibility", "visible");
    popupObj && popupObj.refresh();
}
buildDataSource = function () {
    var category;
    $.each(newArray, function (index, val) {
        category = val;
        $.each(val.samples, function (key, value) {
            $.each(value, function (key1, value1) {
                autocompleteData.push({
                    control: key, sample: value1.query, index: key + value1.query, category: val
                });
            })
        })
    })
};
$(function () {  
    $("#themebutton >li >a > .e-icon:first").addClass("bootstrap");
    window.themecolor = ""; window.themestyle = ""; window.themevarient = "";
    isPopupOpened = false; window.theme = "";
    window.theme = window.theme == "" ? "material" : window.theme;
    // declaration
    isDevice = ej.isDevice() && ej.isTouchDevice();
    buildDataSource();
    initControls();
    //To load the first sample
    initiateSample();
    $("body").removeClass('azure saffron high-contrast-01 high-contrast-02 material office-365 bootstrap azuredark gradientlime lime limedark saffrondark bootstrap').addClass(window.theme);
    if (!isDevice) $("#control_list").animate({ "left": "-251px" }, 350);
    var containerHeight = window.innerHeight - $("#header").outerHeight(true) - $("#categories").outerHeight(true);
    $("#sampleArea .right-align").outerHeight(containerHeight);
    $("#controls span.e-res-title").addClass("e-icon chevron-right");
    window.theme= localStorage.getItem("window.theme") ? localStorage.getItem("window.theme") : window.theme;;
    updateLinkTag(false);  
    window.themevarient = getThemeVar();
    replacebg(window.themevarient);
    $("#themebutton").find('li.e-active').removeClass('e-active');
    $("#themebutton").find("#"+ window.theme).addClass("e-active");
    resizeMenu();
    setTimeout(function () {
        refreshSlider();
    }, 500)
});
bindEvents = function () {
    var toolbarTitle = $("#categories .tb_title");
    $(window).bind("resize", function (e) {
        if (ej.isLowerResolution()) $("body").addClass("mobile");
        window.isMobile = window.innerWidth <= 480;
        //if (e.target.parents && !!e.target.parents && !$(e.target.parents("#search")).length)
        window.isMobile ? $("#sb_search_wrapper").addClass("closed").width(0) : $("#sb_search_wrapper").width(208);
        popupObj && popupObj.refresh();
        window.setTimeout(function () {
            var containerHeight = window.innerHeight - $("#header").outerHeight(true) - $("#categories").outerHeight(true);
            $("#sampleArea .right-align").outerHeight(containerHeight);
            if (window.innerWidth > 980)
                $("#control_list").css("left", "0")
            else {
                $("#control_list").css("left", "-251px")
            }
            $("#control_list").css("max-height", $("#sampleArea .right-align").height() - 16);

        }, 100)

        resizeMenu();
    })
    $(document).bind("click", function (e) {
        if (window.innerWidth < 980 && e.originalEvent && !$(e.originalEvent.target).parents("#control_list").length) {
            if (parseInt($("#control_list").css("left")) >= 0 && e.currentTarget == document && !$(e.target).parents(".e-list").length && !$(e.target).parents(".e-lv").length)
                $("#control_list").css("left", "-251px");
        }
        if (isMobile && e.originalEvent && !$(e.originalEvent.target).parents("#search").length) $("#sb_search_wrapper").width(0);
    })
    $("#controllist_target").bind("click", function (e) {
        $("#control_list").css("left", "0");
        e.stopPropagation();
    })
    $("#scrollTop").bind("click", function () {
        $("#sampleArea .right-align").animate({ scrollTop: 0 }, "fast", function () {
            $("#scrollTop").fadeOut();
        });
    });
    $("#sampleArea .right-align").bind("scroll", function (e) {
        var scrollY = $("#sampleArea .right-align").scrollTop();
        scrollY ? $("#scrollTop").fadeIn() : $("#scrollTop").fadeOut();
    })
    $("#categories_target").bind("click", function () {
        var calcHeight = window.innerHeight - $("#header").height() - $("#categories").outerHeight(true) - 10;
        var menuHeight = $("#categories_hiddenlist").outerHeight(true);
        var height = calcHeight > menuHeight ? menuHeight : calcHeight;
        $("#categories_hiddenlist").height(height);
    })
    $("#categories_hiddenlist li").bind("click", function (e) {
        populateListview(e);
    })
    $("#search_target").on("click", function (e) {
        $("#sb_search_wrapper").hasClass("opened") ?
         $("#sb_search_wrapper").width(0).removeClass("opened") :
        $("#sb_search_wrapper").addClass("opened").removeClass("closed").width(208);
        e.stopPropagation();

    })

    _navigateLeft = function () {
        listObj.element.find(".e-slideleft").removeClass("e-slideleft");
        listObj.element.children(":visible").hide();
        $(listObj.element.children()[0]).show();
        $(listObj.element.children()[0]).addClass("e-slideright");
    }

    loadNext = function () {
        if ($("#child" + window.currentControl).find("li:last").index() == listObj.model.selectedItemIndex) {
            var activeItemIndex, mainList = $("#control_list> div:first-child");
            //Next control
            _navigateLeft();
            //activeItemIndex
            if (mainList.find("li.e-lastitem").index() == listObj.getActiveItem().index()) {
                //Next category
                var activeElement = $("#categories .activeEl").removeClass("activeEl");
                activeElement.parents("ul").next("ul").find("button").click();
                listObj.selectItem(0);
                return;
            }
            listObj.selectItem($("#control_list> div:first-child .e-state-active").index() + 1);
            window.currentControl = $("#control_list> div:first-child .e-state-active").text();
            listObj.selectItem(0, "child" + window.currentControl);
            return;
        }
        else {
            //same control next sample navigation
            listObj.selectItem(listObj.model.selectedItemIndex + 1, "child" + window.currentControl);
        }
    }

    loadPrevious = function () {
        if ($("#child" + window.currentControl).find("li:first").index() == listObj.model.selectedItemIndex) {
            //BackButton Click
            //Next control
            _navigateLeft();
            var activeItemIndex, mainList = $("#control_list> div:first-child");
            //activeItemIndex
            if (mainList.find("li.e-firstitem").index() == listObj.getActiveItem().index()) {
                //Next category
                var activeElement = $("#categories .activeEl").removeClass("activeEl");
                activeElement.parents("ul").prev("ul").find("button").click();
                listObj.selectItem($("#control_list> div:first-child li.e-lastitem").index());
            }
            else
                listObj.selectItem($("#control_list> div:first-child .e-state-active").index() - 1);
            window.currentControl = $("#control_list> div:first-child .e-state-active").text();
            listObj.selectItem(listObj.element.children(":visible").find("li.e-lastitem").index(), "child" + window.currentControl);
            return;
        }
        else {
            //same control next sample navigation
            listObj.selectItem(listObj.model.selectedItemIndex - 1, "child" + window.currentControl);
        }
    }
    $("#sb_next").ejButton({ click: "loadNext" });
    $("#sb_previous").ejButton({ click: "loadPrevious" });
}
loadFirstSample = function (e) {
    if (!isInitialLoading)
        listObj.selectItem(0, e.item.attr("data-childid"));
}

populateListview = function (e) {
    window.currentCategory = $(e.target).text();
    if (e.stopPropagation) e.stopPropagation();
    $(".tbutton").removeClass("activeEl");
    $(e.target).addClass("activeEl");
    var query = ej.Query().using(ej.DataManager(newArray)).where("text", "equal", $(e.target).text())
    var controListObj = query.executeLocal();
    var key = 1;
    controlList = []
    if (controListObj.length)
        $.each(controListObj[0].samples, function (item, value) {
            controlList.push({ text: item, primaryKey: item.replace(" ", ""), childHeaderBackButtonText: item, mouseUp: "loadFirstSample", childId: item.replace(" ", "") });
            $.each(value, function (item1, value1) {
                value1["parentPrimaryKey"] = item.replace(" ", "");
                value1["mouseUp"] = "loadSample";
                value1["href"] = item + "/" + value1.query + ".jsp";
                controlList.push(value1);
                key;
            })
        });
    ej.support.stableSort = false;
    $("#control_list").ejListView({ persistSelection: true, dataSource: controlList, showHeader: true, headerTitle: $(e.target).text(), allowScrolling: false });
    listObj = $("#control_list").data("ejListView");
    if (window.location.hash == "") {
        window.currentControl = "Grid";
        window.currentSample = "default.jsp";
    }
    var parentList = "child" + window.currentControl.replace(" ", "").replace("%20", "");
    var sample = window.currentControl.replace("%20", " ") + "/" + window.currentSample;
    listObj.selectItem($("#control_list li[data-childid='" + parentList + "']").index());
    listObj.selectItem($("#" + parentList).find("li[data-href='" + sample + "']").index(), parentList)
    if (!isDevice) $("#control_list").css("left", "0");
    setTimeout(function () {
        $("#control_list").css("max-height", $("#sampleArea .right-align").height() - 16);
    }, 0)
}
loadSourceCode = function (url) {
    urlStr = "../" + url;
    $(".CodeMirror").each(function (i, obj) {
        if (i > 0)
            $(obj).remove();
    });
    $.ajax({
        type: "GET",
        url: "SourceCode",
        dataType: "html",
        data: { 'args': url },
        success: function (obj, textstatus) {
            $("#JSP").empty();
            $("#JSP").append(ej.buildTag("div#tab_content"));
            var content = obj;
            window.htmlEditor.push(CodeMirror.fromTextArea($("#JSP #tab_content").val(content)[0], {
                lineNumbers: false,
                readOnly: true,
                mode: "text/html"
            }));
        },
        error: function (obj) {
            console.log(obj.responseText);
        }
    });
}
updateRightPane = function (url) {
    $("#API").attr('href', "https://help.syncfusion.com/js/api/ej" + window.currentControl);
    $('.control_ref').removeClass('hidepage');
    $('#ref_document').attr('href', '//help.syncfusion.com/jsp/'+ window.currentControl);
    $('#ref_forums').attr('href', '//www.syncfusion.com/forums/jsp/'+ window.currentControl);
    //$('#ref_kb').attr('href','//www.syncfusion.com/kb/jsp/'+ window.currentControl);
    if (samples.firstControl == window.currentControl && samples.firstSample + ".jsp" == window.currentSample)
        $("#sb_previous").ejButton("disable");
    else
        $("#sb_previous").ejButton("enable");
    if (samples.lastControl == window.currentControl && samples.lastSample + ".jsp" == window.currentSample)
        $("#sb_next").ejButton("disable");
    else
        $("#sb_next").ejButton("enable");
    if($(".e-addsource").length > 0) $(".e-addsource").remove();
    checkAdditionalSourceTab();
if(window.AddTabName.length && $("#sourceTab").hasClass("e-tab e-js e-widget")){
         $("#sourceTab").ejTab("destroy");
         if($(".e-tab-loaded").length > 0) $(".e-tab-loaded").remove();
    }
    $("#sourceTab").ejTab({selectedItemIndex: 0});
}

checkAdditionalSourceTab = function(){
        window.AddTabName=[];
        window.AddTabUrl =[];
        $.each(menuData, function (idx, obj) {
        if(idx == window.currentCategory){
            var controlName = window.currentSample.split(".")[0];
            controlName = controlName.charAt(0).toUpperCase() + controlName.substr(1);
            window.tempdata = menuData[idx][window.currentControl];
                $.each(window.tempdata, function (data, obj1) {
                    if(obj1.dep && window.tempdata[data].href.split("/")[1] == window.currentSample ){
                        $.each(obj1.dep, function (data, obj1) {
                            window.AddTabName.push(obj1.name);
                            window.AddTabUrl.push(obj1.url);
                        });
                    }
                });
        }
    });
   if(window.AddTabName.length > 0){
        $.each(window.AddTabName, function (data, name) {
            var li = document.createElement("li");
            var anchor = document.createElement("a");
            anchor.innerHTML= name;
            anchor.setAttribute("href",window.AddTabUrl[data]);
            li.className += " e-addsource";
            li.appendChild(anchor);
            $("#sourceTab").find("ul").append(li);
        });
   }
}

loadSample = function (e) {
    var url = e.item.attr("data-href");
    var sampleArr = url.split("/");
    if (!isInitialLoading && sampleArr[0] == window.currentControl && sampleArr[1] == window.currentSample) {
        return;
    }
    isInitialLoading = false;
    window.currentControl = sampleArr[0];
    window.currentSample = sampleArr[1];
    updateRightPane(url);
    popupObj.show();
    if (window.innerWidth < 981) $("#control_list").css("left", "-251px");
    window.htmlEditor = [];
    ej.widget.destroyAll($("#sampleContainer .e-js"));
    $("#sampleContainer").empty();
    $("#sourceTab > li > a").text(e.text);
    $("#sourceTab .CodeMirror").find('textarea').attr('readonly', 'readonly');
    $.ajax({
        url: url,
        cache: true,
        success: function (data) {
            $(".panel_container #sampleContainer").html(data);
            loadSourceCode(url);
            $("#controls").scrollTop(0);
            var stateObj = { path: url };
            if (ej.browserInfo().name == "msie" && ej.browserInfo().version < 10)
                return;
            else
                history.pushState(stateObj, "Essential studio for JSP" + window.currentCategory + window.currentControl + " " + window.currentSample + window.UTMLink, "#" + window.currentCategory + "/" + window.currentControl + "/" + window.currentSample + window.UTMLink);
        },
        complete: function () {
            popupObj.hide();
        }
    })
    $(".panel_container .title_text").html(e.text);
}
jQuery.addEventLog = function (eventLog) {
    var eventHtml = "<span class='eventLogger'>" + eventLog + "</span><hr>";
    $(eventHtml).prependTo($("#Logger .EventLog")).slideDown(300, "easeOutQuad");
};

jQuery.clearEventLog = function () {
    $("#Logger .EventLog").html("");
}
