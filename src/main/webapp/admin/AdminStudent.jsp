<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            background: #eef1f7;
        }
        .sidebar {
            width: 260px;
            background: #2c3e50;
            color: white;
            padding: 20px;
            height: 100vh;
            position: fixed;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.3);
            overflow-y: auto;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
        }
        .sidebar ul li {
            padding: 15px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }
        .sidebar ul li a {
            color: white;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 15px;
            font-size: 16px;
            transition: 0.3s;
        }
        .sidebar ul li a i {
            font-size: 22px;
        }
        .sidebar ul li a:hover {
            color: #1abc9c;
        }
        .main-content {
            margin-left: 280px;
            padding: 30px;
            width: calc(100% - 280px);
        }
        .dashboard, .student-profile {
            display: none;
        }
        .active {
            display: block;
        }
        .dashboard-info, .student-info {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }
        .chart-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
        }
        .chart-box {
            width: 45%;
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }
        .total-students-box {
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }
        .filter-container {
            margin-bottom: 20px;
        }
        .login-container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 300px;
            position: absolute;
            top: 50%;
            left: 60%;
            transform: translate(-50%, -50%);
        }
        .login-container h2 {
            margin-bottom: 20px;
        }
        .login-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
        }
        .login-container button {
            width: 100%;
            padding: 10px;
            background: #3498db;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        .login-container button:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Student Panel</h2>
        <ul>
            <li><a onclick="showSection('dashboard')"><i class="fas fa-chart-bar"></i> Dashboard</a></li>
            <li><a onclick="showSection('student-profile')"><i class="fas fa-user-graduate"></i> Student Profile</a></li>
        </ul>
    </div>
    
    <div class="main-content">
        <div id="dashboard" class="dashboard active">
            <h1>Dashboard</h1>
            <div class="total-students-box">Total Students: 1520</div>
            <div class="chart-container">
                <div class="chart-box">
                    <h3>Department-wise Student List</h3>
                    <canvas id="departmentChart"></canvas>
                </div>
                <div class="chart-box">
                    <h3>Year-wise Student Distribution</h3>
                    <label for="departmentSelect">Select Department:</label>
                    <select id="departmentSelect" onchange="updateYearwiseChart()">
                        <option value="CSE">CSE</option>
                        <option value="ECE">ECE</option>
                        <option value="MECH">MECH</option>
                        <option value="CIVIL">CIVIL</option>
                        <option value="IT">IT</option>
                    </select>
                    <canvas id="yearwiseChart"></canvas>
                </div>
            </div>
        </div>
        
        <div id="student-profile" class="student-profile">
            <h1>  Student Profile  </h1>
            <div class="login-container">
                <h2>Student Login</h2>
                <input type="text" id="studentIdInput" placeholder="Enter Student ID">
                <button onclick="fetchStudentData()">Login</button>
            </div>
            
            <div class="student-info" id="studentInfo" style="display:none;">
                <h2>Student Name: <span id="studentName"></span></h2>
                <p><strong>Admission Information:</strong> <span id="admissionInfo"></span></p>
                <p><strong>Internal Assessment Reports:</strong> <span id="internalReports"></span></p>
                <p><strong>Semester Assessment Reports:</strong> <span id="semesterReports"></span></p>
                <p><strong>Hostel Visits:</strong> <span id="hostelVisits"></span></p>
                <p><strong>Transportation:</strong> <span id="transportation"></span></p>
                <p><strong>Fee Report:</strong> <span id="feeReport"></span></p>
                <p><strong>SWOC Analysis:</strong> <span id="swoc"></span></p>
                <p><strong>Scholarships:</strong> <span id="scholarships"></span></p>
                <p><strong>Achievements:</strong> <span id="achievements"></span></p>
                <p><strong>Conduct Information:</strong> <span id="conduct"></span></p>
            </div>
        </div>
    </div>
    
    <script>
        function showSection(section) {
            document.querySelectorAll('.dashboard, .student-profile').forEach(div => {
                div.classList.remove('active');
            });
            document.getElementById(section).classList.add('active');
        }
        
        function createChart(canvasId, labels, data, title) {
            new Chart(document.getElementById(canvasId).getContext('2d'), {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: title,
                        data: data,
                        backgroundColor: ['#34495e', '#3498db', '#e74c3c', '#2ecc71', '#f1c40f', '#9b59b6']
                    }]
                },
                options: {responsive: true,
                    plugins: {
                        legend: { display: false }
                    }
                }
            });
        }
        createChart('departmentChart', ['CSE', 'ECE', 'MECH', 'CIVIL', 'IT'], [400, 350, 300, 250, 220], 'Department-wise Student List');
        function updateYearwiseChart() {
            let yearwiseData = {
                'CSE': [100, 110, 90, 100],
                'ECE': [90, 95, 85, 80],
                'MECH': [80, 85, 75, 70],
                'CIVIL': [70, 75, 65, 60],
                'IT': [60, 65, 55, 50]
            };
            let selectedDept = document.getElementById("departmentSelect").value;
            createChart('yearwiseChart', ['1st Year', '2nd Year', '3rd Year', '4th Year'], yearwiseData[selectedDept], 'Year-wise Student Distribution');
        }
        updateYearwiseChart();

        function fetchStudentData() {
            const studentId = document.getElementById('studentIdInput').value;

            const studentData = getStudentData(studentId);

            if (studentData) {
                document.getElementById('studentName').textContent = studentData.name;
                document.getElementById('admissionInfo').textContent = studentData.admissionInfo;
                document.getElementById('internalReports').textContent = studentData.internalReports;
                document.getElementById('semesterReports').textContent = studentData.semesterReports;
                document.getElementById('hostelVisits').textContent = studentData.hostelVisits;
                document.getElementById('transportation').textContent = studentData.transportation;
                document.getElementById('feeReport').textContent = studentData.feeReport;
                document.getElementById('swoc').textContent = studentData.swoc;
                document.getElementById('scholarships').textContent = studentData.scholarships;
                document.getElementById('achievements').textContent = studentData.achievements;
                document.getElementById('conduct').textContent = studentData.conduct;
                document.getElementById('studentInfo').style.display = 'block';
                document.querySelector('.login-container').style.display = 'none';

            } else {
                alert('Student not found.');
            }
        }

        // Simulated student data retrieval function
        function getStudentData(studentId) {
            const students = {
                '12345': {
                    name: 'Alice',
                    admissionInfo: 'Admitted in 2020, CSE Department',
                    internalReports: 'Excellent performance in internal assessments.',
                    semesterReports: 'GPA: 3.8',
                    hostelVisits: 'Regular visits recorded.',
                    transportation: 'Uses college bus.',
                    feeReport: 'Fees paid in full.',
                    swoc: 'Strengths: Programming, Problem-solving. Weaknesses: Time management.',
                    scholarships: 'Merit scholarship awarded.',
                    achievements: 'Won coding competition.',
                    conduct: 'Excellent conduct record.'
                },
                '67890': {
                    name: 'Bob',
                    admissionInfo: 'Admitted in 2021, ECE Department',
                    internalReports: 'Good performance.',
                    semesterReports: 'GPA: 3.5',
                    hostelVisits: 'Occasional visits.',
                    transportation: 'Own vehicle.',
                    feeReport: 'Pending fees.',
                    swoc: 'Strengths: Electronics, Communication. Weaknesses: Presentation skills.',
                    scholarships: 'None.',
                    achievements: 'Participated in robotics workshop.',
                    conduct: 'Good conduct.'
                },
            };

            return students[studentId];
        }

    </script>
</body>
</html>