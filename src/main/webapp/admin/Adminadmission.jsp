<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admission Dashboard</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eef2f7;
        }
        .dashboard {
            max-width: 90%;
            margin: 30px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        .stats {
            display: flex;
            justify-content: space-between;
            gap: 15px;
            margin-bottom: 25px;
        }
        .stat {
            background: #2d3748;
            color: white;
            padding: 20px;
            border-radius: 10px;
            font-size: 18px;
            text-align: center;
            flex: 1;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .filters {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin-bottom: 25px;
        }
        .filters label {
            flex: 1;
        }
        select, button {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }
        button {
            background-color: #2d3748;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #2e6979;
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
            background: #2d3748;
            color: white;
        }
        .btn-container {
            display: flex;
            justify-content: flex-end;
            margin-top: 15px;
            gap: 10px;
        }
        #print, #export {
            padding: 8px 12px;
            font-size: 14px;
        }
       
    </style>
</head>
<body>
    <div class="dashboard">
        <h2 style="text-align: center; color: #333;">Admission Dashboard</h2>
        <div class="stats">
            <div class="stat">Total Applications: <span>677</span></div>
            <div class="stat">Verified Total: <span>0</span></div>
            <div class="stat">Fee Paid: <span>27</span></div>
            <div class="stat">Rejected: <span>0</span></div>
        </div>
        
        <div class="filters">
            <label>Academic Year:
                <select id="academic-year">
                    <option value="2022-23">2022-23</option>
                    <option value="2023-24">2023-24</option>
                    <option value="2024-25">2024-25</option>
                </select>
            </label>
            <label>Quota:
                <select id="quota">
                    <option value="Open Merit Quota">Open Merit Quota</option>
                    <option value="Management Quota">Management Quota</option>
                    <option value="Sports Quota">Sports Quota</option>
                </select>
            </label>
            <label>Graduation:
                <select id="graduation">
                    <option value="Under Graduation">Under Graduation</option>
                    <option value="Post Graduation">Post Graduation</option>
                </select>
            </label>
            <label>Course:
                <select id="course">
                    <option value="B.Com Computer Application">B.Com Computer Application</option>
                    <option value="B.Sc Electronics">B.Sc Electronics</option>
                    <option value="BBA">BBA</option>
                    <option value="B.Tech IT">B.Tech IT</option>
                </select>
            </label>
            <label>Status:
                <select id="status">
                    <option value="All">All</option>
                    <option value="Pending">Pending</option>
                    <option value="Verified">Verified</option>
                    <option value="Admitted">Admitted</option>
                    <option value="Rejected">Rejected</option>
                </select>
            </label>
            <button id="submit">Filter</button>
        </div>
        
        <table>
            <thead>
                <tr>
                    <th>Appl.No</th>
                    <th>Name</th>
                    <th>DOB</th>
                    <th>Gender</th>
                    <th>Phone</th>
                    <th>Course 1</th>
                    <th>Status</th>
                    <th>Select</th>
                </tr>
            </thead>
            <tbody id="table-body">
                <tr>
                    <td>1079</td>
                    <td>Harini S</td>
                    <td>19-10-2004</td>
                    <td>Female</td>
                    <td>9567279140</td>
                    <td>B.Com Computer Application</td>
                    <td>Admitted</td>
                    <td><input type="checkbox"></td>
                </tr>
                <tr>
                    <td>1078</td>
                    <td>Jeevanandhan</td>
                    <td>19-10-2004</td>
                    <td>Male</td>
                    <td>9567279140</td>
                    <td>BBA</td>
                    <td>Admitted</td>
                    <td><input type="checkbox"></td>
                </tr>
                <tr>
                    <td>1077</td>
                    <td>FATHIMA</td>
                    <td>19-10-2004</td>
                    <td>Female</td>
                    <td>9567279140</td>
                    <td>B.Sc Electronics</td>
                    <td>Admitted</td>
                    <td><input type="checkbox"></td>
                </tr>
            </tbody>
        </table>
        
        <div class="btn-container">
            <button id="export">Export</button>
            <button id="print">Print</button>
        </div>
    </div>
    <script>
        document.getElementById("print").addEventListener("click", function() {
            window.print();
        });
        
        document.getElementById("export").addEventListener("click", function() {
            alert("Export feature coming soon!");
        });
        
        document.getElementById("submit").addEventListener("click", function() {
            let selectedStatus = document.getElementById("status").value;
            let rows = document.querySelectorAll("#table-body tr");
            rows.forEach(row => {
                let status = row.cells[6].textContent.trim();
                row.style.display = (selectedStatus === "All" || status === selectedStatus) ? "" : "none";
            });
        });
    </script>
</body>
</html>
