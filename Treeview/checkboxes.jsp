<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>
<div class="cols-sample-area">
<div style="width: 250px; max-width:100%">
<ej:treeView id="tree" showCheckbox="true">
<ej:treeview-contentTemplate>
<ul>
    <li class="expanded">
        Artwork
        <ul>
            <li>
                Abstract
                <ul>
                    <li>2 Acrylic Mediums</li>
                    <li>Creative Acrylic</li>
                    <li>Modern Painting</li>
                    <li>Canvas Art</li>
                    <li>Black white</li>
                </ul>
            </li>
            <li>
                Children
                <ul>
                    <li>Preschool Crafts</li>
                    <li>School-age Crafts</li>
                    <li>Fabulous Toddler</li>
                </ul>
            </li>
            <li>
                Comic / Cartoon
                <ul>
                    <li>Batman</li>
                    <li>Adventures of Superman</li>
                    <li>Super boy</li>
                </ul>
            </li>
        </ul>
    </li>
    <li class="expanded">
        Books
        <ul>
            <li>
                Comics
                <ul>
                    <li>The Flash</li>
                    <li>Human Target</li>
                    <li>Birds of Prey</li>
                </ul>
            </li>
            <li>Entertaining</li>
            <li>Design</li>
        </ul>
    </li>
    <li>
        Music
        <ul>
            <li>
                Classical
                <ul>
                    <li>Avant-Garde</li>
                    <li>Medieval</li>
                    <li>Orchestral</li>
                </ul>
            </li>
            <li>Mass</li>
            <li>Folk</li>
        </ul>
    </li>
</ul>
</ej:treeview-contentTemplate>
</ej:treeView>
</div>
</div>


