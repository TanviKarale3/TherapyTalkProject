# Therapy Talk





The Speech Language Therapy Clinical Service Software is an excellent platform designed to automate the therapy monitoring process to assist therapy clinicians. It is developed to improve the speech therapy process more by providing lots of abilities like creating therapy plans, peer-to-peer monitoring, progress tracking, and generating expected output using machine learning models. These functionalities will definitely enhance the quality of outcome-based therapy, effectiveness, and results in speech language. 

The Main aim of this mission is to explore a strong web-based as well as app-based software application that is not only user-friendly for all kinds of non-technical users but also allows them to track, monitor, and rehabilitate the entire process.

By incorporating advanced abilities such as therapy outcome prediction using the ML model, more clarity in the speech with the help of audio devices will enhance the process. Overall, this solution will try to improve the quality of speech of children with disabilities in their lives, which will improve their quality of life in society.

# ScreenShots

# LOGIN PAGE
![image](https://github.com/user-attachments/assets/d77581cb-972f-43eb-84c8-04df5a0cf07b)
# CREATE AN ACCOUNT
![image](https://github.com/user-attachments/assets/9b8cb045-b827-4bf2-adaa-9d072975b212)
# HOME PAGE
![image](https://github.com/user-attachments/assets/187acaa8-bf31-439c-9b74-a4bc59174a52)
![image](https://github.com/user-attachments/assets/cf52a7e8-217f-48e2-9a39-4113e5d9eb34)
# ADMIN DASHBOARD
![image](https://github.com/user-attachments/assets/f02060eb-fd32-425e-8f09-fb6f645f229c)
# BOOK YOUR APPOINTMENT
![image](https://github.com/user-attachments/assets/443dc0cb-9419-418b-8269-3892134c24b3)
# APPOINTMENT DETAILS PAGE
![image](https://github.com/user-attachments/assets/265e0ec4-f9e6-45a4-8de3-35e78f428fd1)
# SESSION DETAILS
![image](https://github.com/user-attachments/assets/0a7eba3e-b21d-4865-90b4-6c7a2c4ad22a)
# UPLOAD THERAPY PLAN 
![image](https://github.com/user-attachments/assets/026f807f-b114-4fb5-a3a0-c6dda62335fb)
# ACTIVITY RECOMMENDATION
![image](https://github.com/user-attachments/assets/b07838ea-5089-4ce4-bd16-4f1b35949e92)
# NO OF REGISTERED PATIENTS
![image](https://github.com/user-attachments/assets/3bdf20cc-180c-4918-a257-7d32ea7b274d)


## Run Locally

1. Setup Your Project Folder
```bash 
    therapy-talk/
    │
├── index.html
├── styles.css
├── script.js
├── backend/
│   ├── app.py (if using Flask or Node.js for backend)
│   └── ...
└── database/
    └── setup.sql (your MySQL script)
```
2. Run the Frontend
Since it's static frontend (HTML/CSS/JS):

You can simply open index.html in the browser:

Right click → Open with browser
Or use Live Server in VS Code:

```bash
  Right click on index.html → Open with Live Server
```

3. Start the Backend (Flask)

```bash
  pip install -r requirements.txt
  python app.py
```

4. Set Up MySQL Database

Open MySQL using XAMPP/WAMP or MySQL Workbench.

Run your SQL script (setup.sql) to create the database and tables:
```bash
  SOURCE path/to/your/setup.sql;
```
