<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<div class="cols-sample-area">
<div style="width: 250px; max-width:100%">
<ej:treeView id="tree">
<ej:treeview-contentTemplate>
<ul>
    <li class="expanded">
        <span class="mailicon sprite-root"></span>Mail
        <ul>
            <li>
                <span class="mailicon sprite-inbox"></span>Inbox
                <ul>
                    <li>
                        <span class="mailicon sprite-folder"></span>Development
                    </li>
                    <li>
                        <span class="mailicon sprite-folder"></span>Supports
                    </li>
                    <li>
                        <span class="mailicon sprite-folder"></span>HR Team
                    </li>
                    <li>
                        <span class="mailicon sprite-folder"></span>Management
                    </li>
                    <li>
                        <span class="mailicon sprite-folder"></span>Team Meeting
                    </li>
                </ul>
            </li>
            <li>
                <span class="mailicon sprite-drafts"></span>Drafts
                <ul>
                    <li>
                        <span class="mailicon sprite-folder"></span>Support template
                    </li>
                    <li>
                        <span class="mailicon sprite-folder"></span>Personal
                    </li>
                </ul>
            </li>
            <li>
                <span class="mailicon sprite-sentitems"></span>Sent items
                <ul>
                    <li>
                        <span class="mailicon sprite-folder"></span>Support
                    </li>
                    <li>
                        <span class="mailicon sprite-folder"></span>HTML JS
                    </li>
                    <li>
                        <span class="mailicon sprite-folder"></span>Others
                    </li>
                </ul>
            </li>
            <li><span class="mailicon sprite-deleted"></span>Deleted</li>
            <li><span class="mailicon sprite-junk"></span>Junk Mails</li>
            <li>
                <span class="mailicon sprite-folders"></span>Personal
                <ul>
                    <li>
                        <span class="mailicon sprite-folder"></span>HR Team
                    </li>
                    <li>
                        <span class="mailicon sprite-folder"></span>My Works
                    </li>
                    <li>
                        <span class="mailicon sprite-folder"></span>Login Details
                    </li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <span class="mailicon sprite-calendar"></span>Calendar
        <ul>
            <li>
                <span class="mailicon sprite-calendar"></span>My Calendar
            </li>
            <li>
                <span class="mailicon sprite-calendar"></span>Team
            </li>
            <li>
                <span class="mailicon sprite-calendar"></span>Others
            </li>
        </ul>
    </li>
    <li>
        <span class="mailicon sprite-notes"></span>Notes
        <ul>
            <li>
                <span class="mailicon sprite-folder"></span>My Reference
            </li>
            <li>
                <span class="mailicon sprite-folder"></span>Team Meeting
            </li>
            <li>
                <span class="mailicon sprite-folder"></span>Others
            </li>
        </ul>
    </li>
    <li>
        <span class="mailicon sprite-contacts"></span>Contacts
        <ul>
            <li>
                <span class="mailicon sprite-contacts"></span>Suggested
            </li>
            <li>
                <span class="mailicon sprite-contacts"></span>My Team
            </li>
            <li>
                <span class="mailicon sprite-contacts"></span>Others
            </li>
        </ul>
    </li>
</ul>
</ej:treeview-contentTemplate>
</ej:treeView>
</div>
</div>
<style>
    .darktheme .cols-sample-area .mailicon, 
    .darktheme .cols-sample-area .e-node-hover .mailicon {
        background-image: url("Content/images/mail/mailicons_gray.png");
    }

    .cols-sample-area .e-node-focus .mailicon, 
    .cols-sample-area .e-active .mailicon {
        background-image: url("Content/images/mail/mailicons_white.png");
    }

    .cols-sample-area .mailicon, 
    .cols-sample-area .e-editable .mailicon, 
    .cols-sample-area .e-node-hover .mailicon {
        background-image: url("Content/images/mail/mailicons.png");
    }

    .mailicon {
        display: inline-block;
        overflow: hidden;
        background-repeat: no-repeat;
        text-align: center;
        vertical-align: middle;
        width: 20px;
        height: 18px;
    }

    .sprite-calendar {
        background-position: -25px -255px;
    }

    .sprite-contacts {
        background-position: -26px -429px;
    }

    .sprite-deleted {
        background-position: -24px -152px;
    }

    .sprite-drafts {
        background-position: -24px -83px;
    }

    .sprite-folder {
        background-position: -24px -464px;
    }

    .sprite-folders {
        background-position: -24px -222px;
    }

    .sprite-inbox {
        background-position: -25px -13px;
    }

    .sprite-junk {
        background-position: -23px -187px;
    }

    .sprite-notes {
        background-position: -26px -394px;
    }

    .sprite-outbox {
        background-position: 0 -414px;
        width: 16px;
        height: 16px;
    }

    .sprite-root {
        background-position: -25px -49px;
    }

    .sprite-sentitems {
        background-position: -26px -118px;
    }
</style>

