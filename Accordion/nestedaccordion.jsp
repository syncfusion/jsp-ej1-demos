<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="ej" uri="/WEB-INF/EJ.tld"%>
<%@ page import="com.syncfusion.*"%>

<div class="cols-sample-area">
	<ej:accordion id="nestedAccordion" >
		<ej:accordion-accordionItem-contentTemplate>
			<h3>
               <a href="#">Pizza Menu</a>
           </h3>
           <div>
               That is the reason why we offer a variety of toppings and crusts and a wide array of choices made from natural ingredients, balancing a nutritional diet with splendid taste.
               <ej:accordion id="pizzaMenu" collapsible="true" >
					<ej:accordion-accordionItem-contentTemplate>
	                   <h3>
	                       <a href="#">GARDEN FRESH (Veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/garden-veggie.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $50
	                           <br />
	                           Ingredients : cheese, onions, green capsicums & tomatoes.
	                       </div>
	                   </div>
	                   <h3>
	                       <a href="#">CORN & SPINACH (Veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/corn-and-spinach-05.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $70
	                           <br />
	                           Ingredients : cheese, sweet corn & green capsicums.
	                       </div>
	                   </div>
	                   <h3>
	                       <a href="#">CHICKEN DELITE (Non-veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/chicken-delite.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $100
	                           <br />
	                           Ingredients : cheese, chicken chunks, onions & pineapple chunks.
	                       </div>
	                   </div>
	                   <h3>
	                       <a href="#">KEEMA LA JAWAB (Non-veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/chicken-delite.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $95
	                           <br />
	                           Ingredients : lamb keema, onions, garlic & tandoori seasoning.
	                       </div>
	                   </div>
	              </ej:accordion-accordionItem-contentTemplate>
			</ej:accordion>
           </div>
           <h3>
               <a href="#">Pasta Menu</a>
           </h3>
           <div>
               Pasta cooked to perfection tossed with milk, vegetables, potatoes, poultry, 100% pure mutton, and cheese - and in creating nutritious and tasty meals to maintain good health.
                <ej:accordion id="pastaMenu" collapsible="true" >
					<ej:accordion-accordionItem-contentTemplate>
	                   <h3>
	                       <a href="#">ZESTY MUSHROOMS AND TOMATO  (Veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/zesty-mushroons-and-tomatoes.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $30
	                           <br />
	                           Ingredients : cheese, onions, green capsicums & tomatoes.
	                       </div>
	                   </div>
	                   <h3>
	                       <a href="#">CORN & SPINACH (Veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/corn-and-spinach-05.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $35
	                           <br />
	                           Ingredients : sautered spinach mix, sweet corn, parsley & mozarella cheese.
	                       </div>
	                   </div>
	                   <h3>
	                       <a href="#">BAKED CHICKEN AND CHEESE (Non-veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/baked-chicken-and-cheese.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $55
	                           <br />
	                           Ingredients : grilled chicken, corn and olives.
	                       </div>
	                   </div>
	              </ej:accordion-accordionItem-contentTemplate>
			</ej:accordion>
           </div>
           <h3>
               <a href="#">Sandwizza Menu</a>
           </h3>
           <div>
               Sandwizza cooked to perfection tossed with bread, milk, vegetables, potatoes, poultry, 100% pure mutton, and cheese - and in creating nutritious and tasty meals to maintain good health.
               <ej:accordion id="sandMenu" collapsible="true" >
					<ej:accordion-accordionItem-contentTemplate>
	                   <h3>
	                       <a href="#">GARDEN VEGGIE (Veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/garden-veggie.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $30
	                           <br />
	                           Ingredients : onions, garden-veggies & tomatoes.
	                       </div>
	                   </div>
	                   <h3>
	                       <a href="#">PANEER TIKKA (Veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/paneer-tikka.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $34
	                           <br />
	                           Ingredients : onions, paneer & tomatoes.
	                       </div>
	                   </div>
	                   <h3>
	                       <a href="#">CHICKEN TIKKA (Non-veg)</a>
	                   </h3>
	                   <div>
	                       <img src="Content/images/accordion/chicken-tikka.png" alt="garden-fresh" />
	                       <div class="ingredients">
	                           Rate    : $64
	                           <br />
	                           Ingredients : onions, grilled chicken, chicken salami & tomatoes.
	                       </div>
	                   </div>
	              </ej:accordion-accordionItem-contentTemplate>
			</ej:accordion>
           </div>
		</ej:accordion-accordionItem-contentTemplate>
	
	</ej:accordion>
</div>


<style>
.cols-sample-area {
	width: 700px;
	margin: 0 auto;
	float: none;
}

</style>
