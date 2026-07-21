# Full-stack-Student-Management-System
🎓 Full-stack Student Management System — Flutter sign-up form connected to a .NET Core Web API with SQL Server backend. Clean Material 3 UI, full CRUD, live data table.
flutter dart dotnet aspnetcore webapi sql-server entity-framework-core crud student-management full-stack material-design mobile-app
# 🎓 Student Management System — Flutter + .NET Core + SQL Server

A full-stack mobile application featuring a **Flutter** student sign-up form, an
**ASP.NET Core Web API** backend, and a **SQL Server** database — with a live,
aesthetic data table to view all registered students in real time.

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)
![.NET](https://img.shields.io/badge/.NET-8-512BD4?logo=dotnet&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?logo=microsoftsqlserver&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)

---

## ✨ Features

- 📋 Student Sign-Up form — name, email, password, roll number, department,
  semester, phone, date of birth (with date picker), address — full client-side validation
- 🔗 Connected to a real ASP.NET Core Web API (not mock data)
- 🗃️ Data persisted in SQL Server via Entity Framework Core
- 📊 Live student data table pulled from the database
- 🗑️ Delete students directly from the UI
- 🚫 Duplicate email / roll number prevention on the backend
- 🎨 Clean, modern Material 3 design with a custom theme and gradient header
- 📖 Swagger / OpenAPI docs for easy API testing

---

## 🛠️ Tech Stack


|
 Layer        
|
 Technology                                  
|
|
--------------
|
----------------------------------------------
|
|
 Frontend      
|
 Flutter, Material 3, Google Fonts, 
`http`
|
|
 Backend       
|
 ASP.NET Core 8 Web API, Entity Framework Core 
|
|
 Database      
|
 SQL Server                                    
|
|
 API Docs      
|
 Swagger / OpenAPI                             
|

---

## 📁 Project Structure

\`\`\`
student_management_project/
├── flutter_app/        # Flutter frontend (Sign-Up form + Student table)
├── backend/             # ASP.NET Core Web API (EF Core, CRUD)
└── database/
    └── schema.sql        # SQL Server table script
\`\`\`

---

## 🚀 Getting Started

### 1. Backend (.NET Core API)

**Requirements:** .NET 8 SDK, SQL Server (Express/LocalDB works)

\`\`\`bash
cd backend
dotnet restore
dotnet run
\`\`\`

- API: \`http://localhost:5000\`
- Swagger: \`http://localhost:5000/swagger\`
- Database + table auto-create on first run (or run \`database/schema.sql\` manually)
- Update the connection string in \`appsettings.json\` to match your SQL Server instance

### 2. Flutter App

**Requirements:** Flutter SDK 3.x+

\`\`\`bash
cd flutter_app
flutter pub get
flutter run
\`\`\`

Set the correct API base URL in \`lib/services/api_service.dart\`:


|
 Running on         
|
 Base URL                                
|
|
----------------------
|
-------------------------------------------
|
|
 Android Emulator       
|
 \`http://10.0.2.2:5000/api/students\`       
|
|
 iOS Simulator          
|
 \`http://localhost:5000/api/students\`      
|
|
 Physical device         
|
 \`http://
<
your-PC-LAN-IP
>
:5000/api/students\` 
|

---

## 📌 API Endpoints


|
 Method 
|
 Endpoint              
|
 Description           
|
|
--------
|
-------------------------
|
--------------------------
|
|
 GET    
|
 \`/api/students\`         
|
 Get all students          
|
|
 GET    
|
 \`/api/students/{id}\`    
|
 Get a single student      
|
|
 POST   
|
 \`/api/students\`         
|
 Register a new student    
|
|
 PUT    
|
 \`/api/students/{id}\`    
|
 Update a student           
|
|
 DELETE 
|
 \`/api/students/{id}\`    
|
 Delete a student            
|

---

## 📷 Screenshots

*(Add your app screenshots here before pushing)*

---

## 🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first to
discuss what you'd like to change.

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
