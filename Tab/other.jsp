<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<ej:tab id="defaultTab">
		<ej:tab-contentTemplate>
		    <ul>
                <li><a href="#Pizza">Pizza Menu</a></li>
                <li><a href="#Pasta">Pasta Menu</a></li>
                <li><a href="#Sandwizza">Sandwich Menu</a></li>
            </ul>
            <div id="Pizza">
                Pizza cooked to perfection tossed with milk, vegetables, potatoes, poultry, 100% pure mutton, and cheese - and in creating nutritious and tasty meals to maintain good health.
               	<ej:accordion id="pizzaMenu" collapsible="true" >
					<ej:accordion-accordionItem-contentTemplate>
                            <h3>
                                <a href="#">GARDEN FRESH (Veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="gradenPizza" allowReset="false" readOnly="true" value="4"></ej:rating>
                                        
                                    </div>
                                </div>
                                Simple and delicious mozzarella cheese and pizza sauce on a classic crust.The goodness of crunchy onions, green capsicums & tomatoes.
                            </div>
                            <h3>
                                <a href="#">CORN & SPINACH (Veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="cornPizza" allowReset="false" readOnly="true" value="4"></ej:rating>
                                    </div>
                                </div>
                                Enticing blend of panneer, spinach, sweet corn and mozarella cheese. The garden fresh combination of sweet corn & green capsicums topped with slices of cottage cheese. 
                            </div>
                            <h3>
                                <a href="#">CHICKEN DELITE (Non-veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="chickenPizza" allowReset="false" readOnly="true" value="4"></ej:rating>
                                    </div>
                                </div>
                                A sumptuous portion of chicken chunks & onions topped with delicious mozzarella cheese.Great tropical treat of ripe pineapple chunks & slices of chicken loaf. 
                            </div>
                            <h3>
                                <a href="#">KEEMA LA JAWAB (Non-veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="keemaPizza" allowReset="false" readOnly="true" value="3"></ej:rating>
                                    </div>
                                </div>
                                Hot & delectable desi pizza with lamb keema, onions, garlic & tandoori seasoning. The flavor of chicken tikka along with green capsicum and tomatoes in rich makhani sauce. 
                            </div>
                        </ej:accordion-accordionItem-contentTemplate>
			</ej:accordion>
            </div>
            <div id="Pasta">
                Pasta cooked to perfection tossed with milk, vegetables, potatoes, poultry, 100% pure mutton, and cheese - and in creating nutritious and tasty meals to maintain good health.
                       <ej:accordion id="pastaMenu" collapsible="true" >
						<ej:accordion-accordionItem-contentTemplate>
                            <h3>
                                <a href="#">ZESTY MUSHROOMS AND TOMATO  (Veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="zestyPasta" allowReset="false" readOnly="true" value="4"></ej:rating>
                                    </div>
                                </div>
                                Pasta cooked to perfection tossed with mushrooms & rich flavored tomato concasse oven baked with a cheesy touch. 
                            </div>
                            <h3>
                                <a href="#">CORN & SPINACH (Veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="cornPasta" allowReset="false" readOnly="true" value="4"></ej:rating>
                                    </div>
                                </div>
                                A healthy portion of pasta with sautered spinach mix, sweet corn, parsley & mozarella cheese. 
                            </div>
                            <h3>
                                <a href="#">BAKED CHICKEN AND CHEESE (Non-veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="bakedPasta" allowReset="false" readOnly="true" value="4"></ej:rating>
                                    </div>
                                </div>
                                An all time favorite cheese 'n' pasta loaded with grilled chicken, corn and olives. 
                            </div>
                         </ej:accordion-accordionItem-contentTemplate>
			</ej:accordion>
            </div>
            <div id="Sandwizza">
                Sandwizza cooked to perfection tossed with milk, vegetables, potatoes, poultry, 100% pure mutton, and cheese - and in creating nutritious and tasty meals to maintain good health.
                       <ej:accordion id="sandMenu" collapsible="true" >
						<ej:accordion-accordionItem-contentTemplate>
                            <h3>
                                <a href="#">GARDEN VEGGIE (Veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="gardenSand" allowReset="false" readOnly="true" value="3"></ej:rating>
                                    </div>
                                </div>
                                A treat that brings to life the flavors of straight-from-the-garden-veggies replete with green chilies. An appetizing combination of panneer tikka, onions & tomatoes.
                            </div>
                            <h3>
                                <a href="#">PANEER TIKKA (Veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="paneerSand" allowReset="false" readOnly="true" value="4"></ej:rating>
                                    </div>
                                </div>
                                An appetizing combination of panneer tikka, onions & tomatoes.A treat that brings to life the flavors of straight-from-the-garden-veggies replete with green chilies.
                            </div>
                            <h3>
                                <a href="#">CHICKEN TIKKA (Non-veg)</a></h3>
                            <div>
                                <div>
                                    Rating : 
                                    <div>
                                    	<ej:rating id="chickenSand" allowReset="false" readOnly="true" value="4"></ej:rating>
                                    </div>
                                </div>
                                An appetizing and hot combination of chicken tikka, onions & tomatoes.The ultimate non-veg fiesta of grilled chicken, chicken salami, lamb pepperoni with cheese & onions. 
                            </div>
                        </ej:accordion-accordionItem-contentTemplate>
			</ej:accordion>
            </div>
		</ej:tab-contentTemplate>
	</ej:tab>
</div>


<style>
.cols-sample-area
{
    width: 500px;
    margin: 0 auto;
    float: none;
}

</style>
