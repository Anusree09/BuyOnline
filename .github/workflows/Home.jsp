import javax.servlet.http.HttpServlet;

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<title>Home</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />


</head>
<body>
    <div id="main" class="shell">
        <div id="content">
            <div class="post">
		<h2>Welcome!</h2>
	
                <p style="font-size: 14px">Welcome to the BuyOnline shopping site, products at it's best price.
                </p>
	     </div>
	</div>
     
     <div id="sidebar">
        <ul>
           <li class="widget">
		<h2>TOP Brands</h2>
		</div>
	     </li>
	  </ul>
       </div>
      
      <div class="cl">&nbsp;</div>
     
      <div id="products">
         <h2>Featured Products</h2>
                                <c:forEach var="product" items="${products}" begin="0" end ="14" varStatus="counter">
                                <div class="product" style="display:inline-block">
                                    
                                        <a href="viewProduct.jsp?${product.id}" title="${product.description}"><img src="css/images/${product.name}.jpg" alt="Product Image" /></a>
					<div class="price">
						<div class="inner">
							<span class="title">Price</span>
                                                        
						</div>
					</div>
					<div class="info">
						<p>${product.name}</p>
						<p class="number">Product ${product.id}</p>
					</div>
                                      </div>
                                        <c:if test="${counter.count%5==0}">
                                 <div class="cl">&nbsp;</div>   
                                </c:if>
                                        </c:forEach>
                                
                                <div class="cl">&nbsp;</div>
                                 </div>
                        <div id="product-slider">
                        </div>
		</div>		
	    </div>
</body>
</html>