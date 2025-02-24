<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CoE Module</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f6f9;
        }
        .container {
            max-width: 80%;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h2 {
            color: #2c3e50;
            font-size: 28px;
            margin-bottom: 20px;
        }
        .section {
            margin-top: 20px;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }
        .section:hover {
            transform: translateY(-5px);
        }
        .section h3 {
            color: #2c3e50;
            font-size: 20px;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            background: #ecf0f1;
            padding: 12px;
            margin: 8px 0;
            border-radius: 8px;
        }
        .btn {
            background: #3498db;
            color: white;
            border: none;
            padding: 12px 20px;
            cursor: pointer;
            border-radius: 6px;
            font-size: 16px;
            transition: 0.3s;
        }
        .btn:hover {
            background: #2980b9;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Center of Excellence (CoE)</h1>
        
        <div class="section">
            <h3>1. Purpose of CoE Setup</h3>
            <ul>
             <h4>Academic Structure Definition</h4> 
                <li>Department, Program, Courses mode, Course order, Courses</li>
              <h4>Infrastructure Management</h4>
                <li>Building, Block, Room, Seat, Room Block (Desk)</li>
               <h4>Bundling Rules for Exams</h4>
                <li>Bundling - Maxing Number of Booklets in one bundle</li>
              <h4>Grade System Configuration</h4>
                <li>Grade Card - Scale Setup based on SGPA</li>
                <li>Consolidate Scale Setup (Grade Classification) based on CGPA</li>
            </ul>
        </div>

        <div class="section"><h3>2. Student Registration</h3><button class="btn" onclick="registerStudent()">Register Student</button></div>
        <div class="section"><h3>3. Course Allocation</h3><button class="btn" onclick="allocateCourse()">Allocate Course</button></div>
        <div class="section"><h3>4. Exam Notification Settings</h3><button class="btn" onclick="examSettings()">Set Exam Notification</button></div>
        <div class="section"><h3>5. Exam Registration by Students</h3><button class="btn" onclick="examRegistration()">Register for Exam</button></div>
        <div class="section"><h3>6. Internal Mark Entry</h3><button class="btn" onclick="markEntry()">Enter Marks</button></div>
        <div class="section"><h3>7. Course Wise Applicant Listing</h3><button class="btn" onclick="listApplicants()">List Applicants</button></div>
        <div class="section"><h3>8. Exam Timetable Settings</h3><button class="btn" onclick="generateTimetable()">Generate Timetable</button></div>
        <div class="section"><h3>9. Exam Timetable Publish & Hall Ticket Download</h3>
            <button class="btn" onclick="publishTimetable()">Publish Timetable</button>
            <button class="btn" onclick="downloadHallTicket()">Download Hall Ticket</button>
        </div>
        <div class="section"><h3>10. Exam Schedule Management</h3><button class="btn" onclick="manageSchedule()">Manage Exam Schedule</button></div>
    </div>

    <script>
        function registerStudent() { alert("Student registration process initiated."); }
        function allocateCourse() { alert("Course allocation started."); }
        function examSettings() { alert("Exam settings updated."); }
        function examRegistration() { alert("Exam registration completed."); }
        function markEntry() { alert("Internal marks entry process initiated."); }
        function listApplicants() { alert("Listing course-wise applicants."); }
        function generateTimetable() { alert("Timetable generation in progress."); }
        function publishTimetable() { alert("Exam timetable published."); }
        function downloadHallTicket() { alert("Hall ticket download started."); }
        function manageSchedule() { alert("Exam schedule management system activated."); }
    </script>
</body>
</html>