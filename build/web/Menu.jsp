<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    <body>
       
        <div class="container-fluid">
            <div id="header" style="height: 100px">
                <%@include file="Header.jsp" %>
            </div>
            <div id="content" class="m-5">
                        
                <div class="row p-2" style="width: 100%; text-align: center"><h1 style="width: 100%">OUR SPECIAL</h1><h2 style="width: 100%">Traditional Cuisines</h2></div>
                <div class="row p-2"><h3>Andhra Cuisines</h3></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_101.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Uttapam</h3>
                                <p>Popular breakfast pancakes made with lentils, rice, onions, herbs and spices and are mostly eaten with chutney, sambhar or podi.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 130/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="101" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_102.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Medu Vada</h3>
                                <p>Crispy, fluffy and delicious vada that goes very well with coconut chutney or sambar.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 110/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="102" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_103.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Punugulu</h3>
                                <p>A quick evening snack with urad dal and rice batter. These are crispy deep fried popular snack that are eaten with crispy chutney.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="103" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_104.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Andhra Bhindi</h3>
                                <p>Crunchy and deep fried bhindi sprinkled with roasted masala, a perfect lunch recipe that is quick, easy and fuss-free.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 50/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="104" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                          
                    </div>
                
                <div class="row p-2" style="width: 100%; text-align: center"><h3>Gujarati Cuisines</h3></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_111.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Daal Dhokli</h3>
                                <p>It has soft texture dhokli submerged in semi thick dal with lentil gravy and has mild sweet and spicy taste of aromatic spices and crunchy peanuts.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 120/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="111" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_112.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Puran Poli</h3>
                                <p>Puran poli is a sweet flatbread stuffed with a sweet lentil filling made from husked spilt bengal gram (chana dal) and jaggery.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="112" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_113.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Dhokla</h3>
                                <p>This khaman dhokla recipe makes a wonderfully soft and fluffy, lightly sweet and savory cake that’s perfect to enjoy anytime of the day.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 150/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="113" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_114.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Khandvi</h3>
                                <p>This is a melt in the mouth, smooth, spiced & seasoned gram flour rolls. khandvi is a delicious healthy snack from the Gujarati cuisine.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 170/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="114" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                          
                    </div>
                
                <div class="row p-2" style="width: 100%; text-align: center"><h3>Maharashtrian Cuisines</h3></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_121.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Thaalipeeth</h3>
                                <p> Thalipeeth is a spiced flat bread made from multigrain flour. thalipeeth makes for a healthy, tasty and nutritious breakfast or snack.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 60/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="121" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_122.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Misal Pav</h3>
                                <p> Misal pav is a popular Mumbai street food of usal (sprouts curry) topped with onions, tomatoes, farsan (fried savory mixture), lemon juice and served with pav.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="122" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_123.jpeg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Poha</h3>
                                <p>Poha (pohe) is a quick indian breakfasy made with flatened rice, onions, spices, herbs and peanuts.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 40/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="123" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_124.jpeg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Vada Pav</h3>
                                <p>It consists of deep fried potato dumpling placed inside a bread bun sliced almost in the middle served with one or more chutneys and a green chili pepper.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 40/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="124" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                          
                    </div>
                
                <div class="row p-2" style="width: 100%; text-align: center"><h3>Punjabi Cuisines</h3></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_131.jpeg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Chana Masala</h3>
                                <p>Chana Masala is a delicious & flavorful indian curry made by cooking chickpeas in a spicy indian tomato masala gravy.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="131" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_132.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Saag-Makki ki Roti</h3>
                                <p>The classic Punjabi dish: Sarson da saag te makki di roti. Best had with some white butter, jaggery or honey. This winter special combination of meal makes everyone drool in winters.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="132" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_133.jpeg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Paneer Tikka</h3>
                                <p>It is a popular and delicious tandoori snack where paneer (Indian cottage cheese cubes) are marinated in a spiced yogurt-based marinade, arranged on skewers and grilled in the oven.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 120/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="133" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_134.jpeg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Palak Paneer-Rumali Roti</h3>
                                <p>In Palak Paneer spinach is cooked into gravy with spices and paneer is added as such or fried served with rumali roti.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="134" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                          
                    </div>
                
                <div class="row p-2" style="width: 100%; text-align: center"><h3>Rajasthani Cuisines</h3></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_141.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Daal Baati</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 180/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="141" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_142.jpeg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Mirchi Bada</h3>
                                <p>A popular rajasthani street food recipe made with bhavnagiri or green chili jalapeno and chickpea flour batter. it is very similar to the south indian mirchi bajji but made with slightly smaller and bulky chilli.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 60/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="142" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_143.jpeg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Pyaaj Kachori</h3>
                                <p>a crisp and flaky deep-fried snack recipe made with plain flour and onion stuffing. khasta kachori is famous across india and is made with myriad stuffing including peas, moong dal and potatoes.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 50/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="143" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_144.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Churma</h3>
                                <p>churma recipe is the Rajasthani sweet accompaniment served with popular Rajasthani dal baati. Churma is made using coarsely ground wheat flour, besan (gram flour) or maize flour.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 40/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="144" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                          
                    </div>
                    
                <div class="row p-2" style="width: 100%; text-align: center"><h3>Uttar Pradesh Cuisines</h3></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_151.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Dum Aaloo</h3>
                                <p>A rich and creamy potato based curry hails from the popular punjabi cuisine. the recipe is prepared with tomato and onion based sauce with deep fried baby potatoes.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="151" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_152.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Malpua</h3>
                                <p>Malpua is an Indian dessert made for special occasions! Fried pancakes flavored with fennel and cardamom are dunked in a sugar syrup.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 300/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="152" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_153.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Puri Bhaji</h3>
                                <p>It is a dry potato sabzi served with pooris and sometimes accompanied with onion slices, lemon wedges and coconut chutney. The puri bhaji is also served with dal, rice, raita or salad/Koshimbir in a thali.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="153" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_154.jpeg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Chaat</h3>
                                <p>It is a popular Indian street food made with papdi (fried flour crispies), boiled chickpeas, potatoes, pakoris (fried black gram fritters) and curd.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 50/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="154" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                          
                    </div>
                
                <div class="row p-2" style="width: 100%; text-align: center"><h1 style="width: 100%">BEVERAGES</h1></div>
                <div class="row p-2"><h3>Shakes</h3></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_201.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Cherry Vanilla Shake</h3>
                                <p>So thick you'll need a straw and a long spoon to enjoy this frosty cherry-vanilla milkshake.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 100/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="201" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_202.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Cinnamon Chocolate Shake</h3>
                                <p>If something is already delicious, sometimes you never think to change it up.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 100/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="202" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_203.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Cookies and Cream Shake</h3>
                                <p>Blend Oreos, ice cream, and milk for an indulgent summer milk shake.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 120/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="203" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_204.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">KitKat Marshmallow Shake</h3>
                                <p>It is a chocolate flavoured drink perfect to quench thirst and treat yourself on hit days.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 150/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="204" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                        
                    </div>
                    
                    <div id="cards" class="row mb-4">
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_205.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Crushed Oreo Milkshake</h3>
                                <p>With a bit of cookie crunch, rich chocolate sauce, and creamy texture, it's no wonder that people are so fond of this flavorful Oreo milkshake.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="205" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_206.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Vanilla Caramel Milkshake</h3>
                                <p>It is made with creamy vanilla ice cream and salted caramel sauce topped with fluffy whipped cream, extra salted caramel sauce and toffee bits!</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="206" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div> 
                          
                    </div>
                
                <div class="row p-2"><h3>Fruit Smoothies</h3></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_211.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Apple Smoothie</h3>
                                <p>This creamy, cinnamon-spiced, and fall-feeling healthy Apple Smoothie is here to ease us into the changing season. It’s made without yogurt, vegan, and is a delicious way to treat yourself in the morning.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="211" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_212.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Blueberry Smoothie</h3>
                                <p>The delicious and wonderfully healthy blueberry smoothie has vitamins and minerals blend together with blueberries any time you want a tasty burst of nutrients!</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="212" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_213.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Mango Smoothie</h3>
                                <p>A healthy and delicious mango smoothie can be enjoyed as a snack between meals, or even for a light breakfast or brunch.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="213" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_214.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Pineapple Smoothie</h3>
                                <p>This is a refreshing healthy and yum vegan smoothie made with fresh pineapple and coconut milk.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="214" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                        
                    </div>
                    
                    <div id="cards" class="row mb-4">
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_215.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Mango-Banana Smoothie</h3>
                                <p>A deliciously thick and creamy banana smoothie that is also bursting with mango flavour. It uses milk to make it thick, creamier and richer sweet taste.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="215" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_216.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Strawberry Smoothie</h3>
                                <p>A creamy and delicious strawberry smoothie for a healthy breakfast or snack. Refreshing smoothies with strawberries are rich, creamy and bursting with the bright flavor of fresh strawberries.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="216" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div> 
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_217.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Papaya Almond Smoothie</h3>
                                <p>Papaya Almond smoothie is rich in Calcium. It is good for bone health. It is rich in Vitamin A, it helps to prevent cataract, improves vision too.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="217" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div> 
                          
                    </div>
                
                <div class="row p-2"><h3>Mocktails</h3></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_221.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Virgin Mojito</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="221" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_222.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Blackberry Mojito</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 70/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="222" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_223.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Mango Mule</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="223" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_224.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Shirley Temple</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="224" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                        
                    </div>
                    
                    <div id="cards" class="row mb-4">
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_225.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Pineapple-Mint Mojito</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 90/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="225" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                    </div>
                
                <div class="row p-2" style="width: 100%; text-align: center"><h1 style="width: 100%">Cakes & Pastries</h1></div>
                    
                    <div id="cards" class="row mb-4">
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_301.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Cheese Brownies</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="301" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_302.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Red Velvet Pastry</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 50/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="302" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_303.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Choco Chip Pastry</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 40/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="303" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_304.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Dark Forest Pastry</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 50/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="304" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>  
                        
                    </div>
                    
                    <div id="cards" class="row mb-4">
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_305.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Strawberry Cheese Pastry</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 80/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="305" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_306.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Caramel Pineapple Cake</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 180/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="306" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_307.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Cheese Nut Pastry</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 40/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="307" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                        
                        <div class="card col-3">
                            <img class="card-img-top" src="img/img_308.jpg" style="height: 300px">
                            <div class="card-body">
                                <h3 class="card-title pt-1">Cheese Blackberry Cake</h3>
                                <p>It is a popular snack originated in United States.</p>
                                <h4>
                                    <div style="width: 40%; float: left">
                                        Rs. 200/-
                                    </div>
                                    <div style="width: 60; float: right; text-align: right">
                                        <form method="post" action="checksession.jsp">
                                            <input type="text" name="code" value="308" hidden/>
                                            <input type="submit" class="btn btn-success" value="Add to Cart"/>
                                        </form>
                                    </div>
                                </h4>
                            </div>
                        </div>
                          
                    </div>
            </div>
               
            <div id="footer" style="height: 100px; width: 100%">
                <%@include file="Footer.jsp" %>
            </div>
        </div>
    </body>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
</html>
