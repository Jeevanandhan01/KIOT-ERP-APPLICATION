<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portable Calendar</title>
    
    <!-- FullCalendar CSS -->
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet">
    
    <!-- FullCalendar JS -->
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ecf0f1;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        #calendar-container {
            width: 90%;
            max-width: 800px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .fc-toolbar {
            background-color: #2c3e50;
            padding: 10px;
            border-radius: 5px;
            color: white;
        }

        .fc-toolbar h2 {
            color: white;
        }

        .fc-button {
            background-color: #2c3e50 !important;
            border-color: #2c3e50 !important;
            color: white !important;
        }

        .fc-button:hover {
            background-color: #1a252f !important;
        }

        .fc-daygrid-day {
            border: 1px solid #2c3e50;
        }
    </style>
</head>
<body>
    <div id="calendar-container">
        <div id="calendar"></div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var calendarEl = document.getElementById("calendar");
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: "dayGridMonth",
                headerToolbar: {
                    left: "prev,next today",
                    center: "title",
                    right: "dayGridMonth,timeGridWeek,timeGridDay"
                },
                themeSystem: "standard"
            });

            calendar.render();
        });
    </script>
</body>
</html>
