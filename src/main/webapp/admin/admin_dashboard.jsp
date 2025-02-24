<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.3.0/chart.umd.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../styles/admin_dashboard.css">
</head>
<body>
    <div class="sidebar">
        <h2>Admin Panel</h2>
        <button class="dark-toggle" onclick="toggleDarkMode()">Toggle Dark Mode</button>
        <ul>
            <li><i class="fas fa-home"></i> <a href="#">Dashboard</a></li>
            <li><i class="fas fa-user"></i> <a href="#">My Account</a></li>
            <li><i class="fas fa-chalkboard-teacher"></i> <a href="Adminfaculty.jsp">Faculty Details</a></li>
            <li><i class="fas fa-user-graduate"></i> <a href="AdminStudent.jsp">Student Details</a></li>
            <li><i class="fas fa-book"></i> <a href="#">Outcome Based Education (OBE)</a></li>
            <li><i class="fas fa-user-plus"></i> <a href="Adminadmission.jsp">Admission Details</a></li>
            <li><i class="fas fa-box"></i> <a href="Adminasset.jsp">Asset Management</a></li>
            <li><i class="fas fa-certificate"></i> <a href="#">IQAC Accreditations</a></li>
            <li><i class="fas fa-file-alt"></i> <a href="AdminCOE.jsp">Controller of Examination (COE)</a></li>
            <li><i class="fas fa-calendar-alt"></i> <a href="AdminCalendar.jsp">Calendar</a></li>
            <li><i class="fas fa-comment-dots"></i> <a href="#">Feedbacks</a></li>
            <li><i class="fas fa-sign-out-alt"></i> <a href="index.html">Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <h1>Admin Dashboard</h1>

        <div class="stats-container">
            <div class="stats-card students">
                <i class="fas fa-user-graduate"></i>
                <div class="count">1520</div>
                <div class="label">Students</div>
            </div>
            <div class="stats-card faculty">
                <i class="fas fa-chalkboard-teacher"></i>
                <div class="count">220</div>
                <div class="label">Faculty</div>
            </div>
            <div class="stats-card staff">
                <i class="fas fa-users"></i>
                <div class="count">320</div>
                <div class="label">Other Staff</div>
            </div>
        </div>

        <div class="institution-calendar calendar-container">
            <h3>Institution Calendar</h3>
            <input type="date" id="calendar">
            <div id="task-list">
                <p><i class="fas fa-users"></i> Meeting with student union - 10:30 AM</p>
                <p><i class="fas fa-chalkboard-teacher"></i> Faculty training session - 2:00 PM</p>
            </div>
        </div>

        <div class="attendance-overview">
            <h3>Attendance Overview</h3>
            <canvas id="attendanceChart"></canvas>
        </div>
    </div>
</body>
</html>
<script>

    
    function toggleDarkMode() {
    
    document.body.classList.toggle("dark-mode");
    
    }
    
    
    
    
    document.addEventListener("DOMContentLoaded", function () {
    
    const ctx = document.getElementById('attendanceChart').getContext('2d');
    
    new Chart(ctx, {
    
    type: 'bar',
    
    data: {
    
    labels: ['CSE', 'ECE', 'MECH', 'CIVIL', 'IT'],
    
    datasets: [
    
    {
    
    label: 'Student Attendance %',
    
    data: [85, 78, 92, 76, 88],
    
    backgroundColor: ['#3498db', '#e74c3c', '#2ecc71', '#f39c12', '#9b59b6']
    
    },
    
    {
    
    label: 'Faculty Attendance %',
    
    data: [95, 90, 85, 88, 92],
    
    backgroundColor: ['#1abc9c', '#8e44ad', '#e67e22', '#d35400', '#16a085']
    
    }
    
    ]
    
    }
    
    });
    
    });
    
    
    document.getElementById("calendar").addEventListener("change", function () {
    
    alert("Selected Date: " + this.value);
    
    });
    
    </script>
    
    </body>
    
    </html>