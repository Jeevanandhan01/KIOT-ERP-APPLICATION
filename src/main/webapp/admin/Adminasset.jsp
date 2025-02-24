<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asset Management</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        .container {
            max-width: 90%;
            margin: 30px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .btn {
            background-color: #4a90e2;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #357ab8;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: white;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #343a40;
            color: white;
        }
        .search-container {
            margin-bottom: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .search-container input {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .modal {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
        }
        .form-group {
            margin-bottom: 10px;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Asset Management</h2>
        <div class="search-container">
            <div>
                <input type="date" id="filterStartDate">
                <input type="date" id="filterEndDate">
                <button class="btn" id="filterBtn">Filter</button>
            </div>
            <button class="btn" id="generateReport">Generate Report</button>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Purchase ID</th>
                    <th>Supplier</th>
                    <th>Bill Date</th>
                    <th>Bill No</th>
                    <th>Item Name</th>
                    <th>Quantity</th>
                    <th>Rate</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody id="purchaseTableBody">
            </tbody>
        </table>
        <div class="button-container">
            <button class="btn" id="addPurchaseBtn">Add Purchase</button>
        </div>
    </div>

    <div class="modal" id="purchaseModal">
        <h3>Add Purchase</h3>
        <div class="form-group">
            <label>Supplier</label>
            <input type="text" id="supplier">
        </div>
        <div class="form-group">
            <label>Bill Date</label>
            <input type="date" id="billDate">
        </div>
        <div class="form-group">
            <label>Bill No</label>
            <input type="text" id="billNo">
        </div>
        <div class="form-group">
            <label>Item Name</label>
            <input type="text" id="itemName">
        </div>
        <div class="form-group">
            <label>Quantity</label>
            <input type="number" id="quantity">
        </div>
        <div class="form-group">
            <label>Rate</label>
            <input type="number" id="rate">
        </div>
        <button class="btn" id="savePurchase">Save</button>
        <button class="btn" id="closeModal">Close</button>
    </div>

    <script>
        document.getElementById("addPurchaseBtn").addEventListener("click", function() {
            document.getElementById("purchaseModal").style.display = "block";
        });
        
        document.getElementById("closeModal").addEventListener("click", function() {
            document.getElementById("purchaseModal").style.display = "none";
        });
        
        document.getElementById("savePurchase").addEventListener("click", function() {
            let supplier = document.getElementById("supplier").value;
            let billDate = document.getElementById("billDate").value;
            let billNo = document.getElementById("billNo").value;
            let itemName = document.getElementById("itemName").value;
            let quantity = document.getElementById("quantity").value;
            let rate = document.getElementById("rate").value;
            let price = quantity * rate;
            
            let tableBody = document.getElementById("purchaseTableBody");
            let newRow = document.createElement("tr");
            newRow.innerHTML = `<td>${tableBody.children.length + 1}</td>
                                <td>${supplier}</td>
                                <td>${billDate}</td>
                                <td>${billNo}</td>
                                <td>${itemName}</td>
                                <td>${quantity}</td>
                                <td>${rate}</td>
                                <td>${price}</td>`;
            tableBody.appendChild(newRow);
            document.getElementById("purchaseModal").style.display = "none";
        });
    </script>
      <script>
        document.getElementById("generateReport").addEventListener("click", function() {
            let table = document.querySelector("table").outerHTML;
            let blob = new Blob([table], { type: "application/vnd.ms-excel" });
            let link = document.createElement("a");
            link.href = URL.createObjectURL(blob);
            link.download = "Asset_Report.xls";
            link.click();
        });
    </script>
</body>
</html>
