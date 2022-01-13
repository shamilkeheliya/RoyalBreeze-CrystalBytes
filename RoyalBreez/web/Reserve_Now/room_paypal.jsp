<%-- 
    Document   : room_paypal
    Created on : 13-Jan-2022, 13:39:30
    Author     : IsuraD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">  

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Ubuntu&display=swap" rel="stylesheet"> 
        
        <title>Pay Here</title>
        <link rel="icon" type="image/png" sizes="16x16" href="../images/icon.png">
        <style>
            .main01{
/*                border: 1px solid black; */
                padding-top: 100px;
                hight: 100%; 
                width: 90%;
            }
            .textmain{
                font-family: 'Ubuntu', sans-serif;
                font-size: 100px;
            }
        </style>
    </head>
    <body>
    <center>
        <div class="main01">
            <p class="textmain">Pay Here..!</p>
        <div id="smart-button-container">
                        <div style="text-align: center;">
                            <div id="paypal-button-container"></div>
                        </div>
                    </div>
                    <script src="https://www.paypal.com/sdk/js?client-id=AcX0M5jsuZVBOdOsyaJFcz-0q4OrV4NZi04Gt7ldHUrq8UZNLV-7vUStsTa3f-Ak0ewv5OgDWHRHsmFf&disable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>
                    <script>
                            function initPayPalButton() {
                                paypal.Buttons({
                                    style: {
                                        shape: 'rect',
                                        color: 'gold',
                                        layout: 'vertical',
                                        label: 'paypal',

                                    },

                                    createOrder: function (data, actions) {
                                        return actions.order.create({
                                            purchase_units: [{"amount": {"currency_code": "USD", "value": 1}}]
                                        });
                                    },

                                    onApprove: function (data, actions) {
                                        return actions.order.capture().then(function (orderData) {

                                            // Full available details
                                            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                                            // Show a success message within this page, e.g.
                                            const element = document.getElementById('paypal-button-container');
                                            element.innerHTML = '';
                                            element.innerHTML = '<h3>Thank you for your payment!</h3>';

                                            // Or go to another URL:  actions.redirect('thank_you.html');

                                        });
                                    },

                                    onError: function (err) {
                                        console.log(err);
                                    }
                                }).render('#paypal-button-container');
                            }
                            initPayPalButton();
                    </script>
        </div>
    </center>
    </body>
</html>


