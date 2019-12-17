<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
		<ej:menu id="vertical" menuType="normalmenu" orientation="vertical" >
			<ej:menu-contentTemplate>
                 <li><a>Books</a>
                        <ul>
                            <li><a>New Releases</a></li>
                            <li><a>New Releases audio books</a></li>
                            <li><a>Bestsellers</a></li>
                            <li><a>Upcoming</a></li>
                            <li><a>Box Sets</a></li>
                        </ul>
                    </li>
                    <li><a>Gaming</a>
                        <ul>
                            <li><a>Upcoming</a></li>
                            <li><a>PC</a></li>
                            <li><a>PS Vista</a></li>
                            <li><a>PS3</a></li>
                            <li><a>XBox</a></li>
                            <li><a>Consoles</a></li>
                        </ul>
                    </li>
                    <li><a>Mobiles</a>
                        <ul>
                            <li><a>New Arrivals</a></li>
                            <li><a>Bestsellers</a></li>
                            <li><a>Low Price</a></li>
                            <li><a>Tablets</a></li>
                        </ul>
                    </li>
                    <li><a>Cameras</a>
                        <ul>
                            <li><a>Point & Shoots</a></li>
                            <li><a>Digital SLR</a></li>
                            <li><a>Camcorders</a></li>
                            <li><a>Bestsellers</a></li>
                        </ul>
                    </li>
                    <li><a>Musics</a>
                        <ul>
                            <li><a>New Releases</a></li>
                            <li><a>Bestsellers</a></li>
                            <li><a>Rock Music</a></li>
                            <li><a>Devotional & Spiritual</a></li>
                            <li><a>Sufi & Ghazal</a></li>
                        </ul>
                    </li>
			</ej:menu-contentTemplate>
		</ej:menu>
</div>


<style>
.cols-sample-area {
    width: 600px;
    margin: 0 auto;
    float: none;
}
</style>
