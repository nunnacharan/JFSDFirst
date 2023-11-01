<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-50 {
  -ms-flex: 50%;
  flex: 50%;
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
}
</style>
<script>
function togglePaymentOption() {
  const paymentMethod = document.getElementById("paymentMethod").value;
  const paymentOptions = ["creditCardPayment", "debitCardPayment", "upiPayment", "scannerCodePayment"];

  // Hide all payment options
  for (const option of paymentOptions) {
    document.getElementById(option).style.display = "none";
  }

  // Show the selected payment option
  document.getElementById(paymentMethod + "Payment").style.display = "block";
}
</script>
</head>
<body>

<h2>Payment Checkout</h2>
<div class="row">
  <div class="col-50">
    <div class="container">
      <form action="/process-booking.jsp">
        <label for="paymentMethod">Select Payment Method:</label>
        <select id="paymentMethod" name="paymentMethod" onchange="togglePaymentOption()">
          <option value="creditCard">Credit Card</option>
          <option value="debitCard">Debit Card</option>
          <option value="upi">UPI</option>
          <option value="scannerCode">Scanner Code</option>
        </select>

        <div id="creditCardPayment">
          <h3>Credit Card Payment</h3>
          <label for="cname">Name on Card</label>
          <input type="text" id="cname" name="cardname" placeholder="John More Doe">
          <label for="ccnum">Credit card number</label>
          <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
          <label for="expmonth">Exp Month</label>
          <input type="text" id="expmonth" name="expmonth" placeholder="September">
          <div class="row">
            <div class="col-50">
              <label for="expyear">Exp Year</label>
              <input type="text" id="expyear" name="expyear" placeholder="2018">
            </div>
            <div class="col-50">
              <label for="cvv">CVV</label>
              <input type="text" id="cvv" name="cvv" placeholder="352">
            </div>
          </div>
        </div>
        <div id="debitCardPayment">
          <h3>Debit Card Payment</h3>
          <label for "dname">Name on Card</label>
          <input type="text" id="dname" name="debitcardname" placeholder="John More Doe">
          <label for="dcardnum">Debit card number</label>
          <input type="text" id="dcardnum" name="debitcardnumber" placeholder="1111-2222-3333-4444">
          <label for="dexpmonth">Exp Month</label>
          <input type="text" id="dexpmonth" name="debitexpmonth" placeholder="September">
          <div class="row">
            <div class="col-50">
              <label for="dexpyear">Exp Year</label>
              <input type="text" id="dexpyear" name="debitexpyear" placeholder="2018">
            </div>
            <div class="col-50">
              <label for="dcvv">CVV</label>
              <input type="text" id="dcvv" name="debitcvv" placeholder="352">
            </div>
          </div>
        </div>

        <div id="upiPayment">
          <h3>UPI Payment</h3>
          <label for="upiNumber">UPI Number:</label>
          <input type="text" id="upiNumber" name="upiNumber" placeholder="Your UPI Number">
          <label>
            <input type="checkbox" name="upiConfirmation"> Do you confirm this UPI payment?
          </label>
        </div>

        <div id="scannerCodePayment">
          <h3>Scanner Code Payment</h3>
          <label for="scannerCode">Scan the QR Code or Enter Code:</label>
          <!-- You can add an input field for entering the code or an image for scanning QR code -->
          <img src="static/qr.jpg" alt="QR Code Image" width="150" height="150">
        </div>

        <a href="success.jsp" class="btn">Proceed to Payment</a>
      </form>
    </div>
  </div>
</div>
</body>
</html>