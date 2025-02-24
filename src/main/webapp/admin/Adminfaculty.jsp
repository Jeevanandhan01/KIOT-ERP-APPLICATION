<!-- faculty-details.html -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Details</title>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 20px;
            background: #ecf0f3;
        }
        .container {
            max-width: 900px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        }
        h1 {
            text-align: center;
        }
        .faculty-list {
            margin-top: 20px;
        }
        .department {
            margin-bottom: 20px;
        }
        .department h2 {
            background: #34495e;
            color: white;
            padding: 10px;
            border-radius: 5px;
        }
        .faculty-member {
            display: flex;
            justify-content: space-between;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .faculty-member:last-child {
            border-bottom: none;
        }
        .faculty-info {
            flex: 1;
        }
        .faculty-profile {
            text-align: right;
        }
        .faculty-profile a {
            text-decoration: none;
            background:#34495e;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
        }
        .profile-details {
            display: none;
            background: #f4f4f4;
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
        }
    </style>
    <script>
        function toggleProfile(id) {
            var profile = document.getElementById(id);
            profile.style.display = profile.style.display === 'none' ? 'block' : 'none';
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Faculty Details</h1>
        <div class="faculty-list">
            <div class="department">
                <h2>Computer Science Engineering</h2>
                <div class="faculty-member">
                    <div class="faculty-info">
                        <strong>Dr.T Karthikeyan</strong><br>
                        PhD in AI & ML | 15 years of experience
                    </div>
                    <div class="faculty-profile">
                        <a href="#" onclick="toggleProfile('profile1')">View Profile</a>
                    </div>
                </div>
                <div id="profile1" class="profile-details">
                    <p><strong>Name:</strong> Dr.T Karthikeyan</p>
                    <p><strong>Age:</strong> 45</p>
                    <p><strong>Address:</strong> 123 Main St, Cityville</p>
                    <p><strong>Work Experience:</strong> 15 years</p>
                    <p><strong>Published Papers:</strong> 25 research papers in AI & ML</p>
                    <p><strong>Attendance Report:</strong> 95% average</p>
                    <p><strong>Awards & Recognition:</strong> Best AI Researcher 2020</p>
                </div>
                <div class="faculty-member">
                    <div class="faculty-info">
                        <strong>Dr. John</strong><br>
                        PhD in Cybersecurity | 10 years of experience
                    </div>
                    <div class="faculty-profile">
                        <a href="#" onclick="toggleProfile('profile1a')">View Profile</a>
                    </div>
                </div>
                <div id="profile1a" class="profile-details">
                    <p><strong>Name:</strong> Dr. John</p>
                    <p><strong>Age:</strong> 40</p>
                    <p><strong>Address:</strong> 456 Elm St, TechCity</p>
                    <p><strong>Work Experience:</strong> 10 years</p>
                    <p><strong>Published Papers:</strong> 15 research papers in Cybersecurity</p>
                    <p><strong>Attendance Report:</strong> 96% average</p>
                    <p><strong>Awards & Recognition:</strong> Cybersecurity Excellence Award 2021</p>
                </div>
            </div>



            
            <div class="department">
                <h2>Information Technology</h2>
                <div class="faculty-member">
                    <div class="faculty-info">
                        <strong>Dr. Alex</strong><br>
                        PhD in Data Science | 12 years of experience
                    </div>
                    <div class="faculty-profile">
                        <a href="#" onclick="toggleProfile('profileIT1')">View Profile</a>
                    </div>
                </div>
                <div id="profileIT1" class="profile-details">
                    <p><strong>Name:</strong> Dr. Alex</p>
                    <p><strong>Age:</strong> 42</p>
                    <p><strong>Address:</strong> 987 Data St, InfoCity</p>
                    <p><strong>Work Experience:</strong> 12 years</p>
                    <p><strong>Published Papers:</strong> 20 research papers in Data Science</p>
                    <p><strong>Attendance Report:</strong> 94% average</p>
                    <p><strong>Awards & Recognition:</strong> Best Data Scientist 2018</p>
                </div>
                <div class="faculty-member">
                    <div class="faculty-info">
                        <strong>Dr.V Kumar</strong><br>
                        PhD in Software Engineering | 9 years of experience
                    </div>
                    <div class="faculty-profile">
                        <a href="#" onclick="toggleProfile('profileIT2')">View Profile</a>
                    </div>
                </div>
                <div id="profileIT2" class="profile-details">
                    <p><strong>Name:</strong> Dr.Kumar</p>
                    <p><strong>Age:</strong> 38</p>
                    <p><strong>Address:</strong> 654 Code St, TechTown</p>
                    <p><strong>Work Experience:</strong> 9 years</p>
                    <p><strong>Published Papers:</strong> 18 research papers in Software Engineering</p>
                    <p><strong>Attendance Report:</strong> 97% average</p>
                    <p><strong>Awards & Recognition:</strong> Excellence in Software Development 2019</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
